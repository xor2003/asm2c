//
//  asm2c.swift
//  asm2c
//

import Foundation

class asm2c {

    func convertToC(fileName: String, fileNameOutputC: String, fileNameOutputH: String, include: String, ressourceDirectory:String) {
        print("reading: <\(fileName)>\n")
        print("output: <\(fileNameOutputC)>\n")

        guard let urlFile = URL(string: fileName) else {
            return;
        }

        //reading
        do {
            
            guard let asmHFile = URL(string: "\(ressourceDirectory)/asm.h") else {
                return;
            }
            guard let asmCFile = URL(string: "\(ressourceDirectory)/asm.c") else {
                return;
            }
            
            let asmH = try String(contentsOf: asmHFile)
            let asmC = try String(contentsOf: asmCFile)
            
            let source = try String(contentsOf: urlFile, encoding: String.Encoding.isoLatin1).replace(target: "\r", withString: "")

            let lines: [String] = source.components(separatedBy: "\n")
                
    
            var lineNumber = 0


            let tokens: [[(Token,Int,String)]] = lines.flatMap { lineContent in lineNumber=lineNumber+1;return (Lexer(input: lineContent,line: lineNumber).tokenize()) }
            let parser = Parser(tokens: tokens.flatMap { $0 })
            dataPrimaryNodes = parser.parseData()
            _ = dataPrimaryNodes.map { dataPrimaryNodesMap[$0.name] = $0 }

            let (nodes, equ, nbErrors) = try parser.parse()
            let memory = dataPrimaryNodes.reduce("") {prev, lastline in
                    return "\(prev)\(lastline)"
            }

            let memoryValue = dataPrimaryNodes.reduce("") {prev, lastline in
                    return "\(prev)\(lastline.printData())"
            }

            let defineSizeOfs = multiline( "#define sizeOfeax 4",
                "#define sizeOfebx 4",
                "#define sizeOfecx 4",
                "#define sizeOfedx 4",
                "#define sizeOfesi 4",
                "#define sizeOfedi 4",
                "#define sizeOfebp 4",
                "#define sizeOfesp 4",
                "#define sizeOfcs 2",
                "#define sizeOfds 2",
                "#define sizeOfes 2",
                "#define sizeOffs 2",
                "#define sizeOfgs 2",
                "#define sizeOfss 2",
                dataPrimaryNodes.reduce("") {prev, lastline in
                    if (lastline.name.hasPrefix("dummy")) {
                        return "\(prev)"
                    } else {
                        var defineSizeOf = "#define sizeOf\(lastline.name) "
                        switch lastline.getSizeDirective() {
                        case .byte:
                            defineSizeOf="\(defineSizeOf) 1"
                        case .word:
                            defineSizeOf="\(defineSizeOf) 2"
                        case .dword:
                            defineSizeOf="\(defineSizeOf) 4"
                        default:
                            defineSizeOf="\(defineSizeOf) 0"
                        }
                        return "\(prev)\(defineSizeOf)\n"
                    }
                }
            )

            let defines = equ.reduce("") {prev, lastline in
                               return "\(prev)\(lastline)"
			  }
            let code = nodes.reduce("") {prev, lastline in
                switch  lastline {
                    case is DataPrimaryNode:
                        return "\(prev)"
                default:
                    return "\(prev)\(lastline)"
                }
            }

            let generatedBy = "// Generated by asm2c https://github.com/frranck/asm2c"

            let outputString = multiline( generatedBy,
					  defines,
                                         "#include \"\(include).h\"",
                                         "Memory m = {", // jmpbuffer",
                                         "\(memoryValue)0,0,0,0,0,0,0,0,0,0,0,0,0,0, // registers",
                                         "0,0,0,0,0,0, //flags",
                                         "0, //exitCode",
                                         "{0}, //vgaPalette",
                                         "0,{0},1,{0},0,{0},{0},{0},{0}, NULL};\n",
                                         "int program() {",
                                         "jmp_buf jmpbuffer;",
                                         "void * dest;",
                                         "void * src;",
                                         "#ifdef TEST",
                                         "dest=NULL;src=NULL; //to avoid a warning.",
                                         "#endif",
                                         "if (m.executionFinished) goto moveToBackGround;",
                                         "if (m.jumpToBackGround) {",
                                         "m.jumpToBackGround = 0;",
                                         "RET;",
                                         "}",
                                         code,
                                         "m.executionFinished = 1;",
                                         "moveToBackGround:",
                                         "return (m.executionFinished == 0);",
                                         "}",
                                         asmC,
                                         "#ifdef TEST",
                                         "int main() {",
                                         "stackDump();while (program()) { }",
                                         "return m.exitCode;",
                                         "}",
                                         "#endif",
                                         "\n\n");


            //writing
            print("writing \(fileNameOutputC)")
            if let urlFileOutput = URL(string: fileNameOutputC) {
                try outputString.write(to: urlFileOutput, atomically: false, encoding: String.Encoding.utf8)            }


            
            let outputStringH = multiline( generatedBy,
					  "#ifndef \(include.uppercased())_H__",
                                          "#define \(include.uppercased())_H__",
                                           asmH,
                                          "typedef struct __attribute__((packed)) Mem {",
                                          memory,
                                          "dd eax;",
                                          "dd ebx;",
                                          "dd ecx;",
                                          "dd edx;",
                                          "dd esi;",
                                          "dd edi;",
                                          "dd ebp;",
                                          "dd esp;",
                                          "dw cs;",
                                          "dw ds;",
                                          "dw es;",
                                          "dw fs;",
                                          "dw gs;",
                                          "dw ss;",
                                          "_Bool CF;",
                                          "_Bool ZF;",
                                          "_Bool DF;",
                                          "_Bool SF;",
                                          "_Bool jumpToBackGround;",
                                          "_Bool executionFinished;",
                                          "db exitCode;",
                                          "db vgaPalette[256*3];",
                                          "int stackPointer;",
                                          "dd stack[STACK_SIZE];",
                                          "dd selectorsPointer;",
                                          "dd selectors[NB_SELECTORS];",
                                          "dd heapPointer;",
                                          "db heap[HEAP_SIZE];",
                                          "db vgaRam0[VGARAM_SIZE];",
                                          "db vgaRam[VGARAM_SIZE];",
                                          "db vgaRam2[VGARAM_SIZE];",
                                          "char *path;",
                                          "} Memory;",
                                          "int program();",
                                          "#endif",
                                          "\n\n",
                                          defineSizeOfs
                                          );
            
            
            //writing
            print("writing \(fileNameOutputH)")
            if let urlFileOutput = URL(string: fileNameOutputH) {
                try outputStringH.write(to: urlFileOutput, atomically: false, encoding: String.Encoding.utf8)
            }

            
            if (nbErrors > 0) {
                print("NB errors: \(nbErrors)")
                exit(1)
            }

        }
        catch {
            print("\(error)\n")
            //consoleIO.writeMessage("\(source)", to: .standard)
            exit(1)
            /* error handling here */
        }

    }
}