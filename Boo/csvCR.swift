//
//  csvCreator.swift
//  Boo
//
//  Created by Ieda Xavier on 21/03/22.
// 

import Foundation


//Vai criar um arquivo csv na page Home e inserir o cabeçalho dos valores
func createFile(){
    let filePath = NSHomeDirectory() + "/Planilha.csv"
    if fileVerify() == false {
        (FileManager.default.createFile(atPath: filePath, contents: nil, attributes: nil))
        if fileVerify() {
            do {
                let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: filePath))
                handle.seekToEndOfFile()
                handle.write("Nome, Tipo, Tag, Valor, Data,,Total\n".data(using: .utf8)!)
                handle.closeFile()
            } catch {
                print(error)
            }
        } else {
            print("\n\tO Arquivo não foi criado, tente novamente.\n\n")
        }
    } else {
    }
}

//escrever no arquivo csv
func writeFile(lista: String){
    let filePath = NSHomeDirectory() + "/Planilha.csv"
    do {
        let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: filePath))
        handle.seekToEndOfFile()
        handle.write("\(lista)\n".data(using: .utf8)!)
        handle.closeFile()
    } catch {
        print(error)
    }
}

//verifica se o arquivo existe
func fileVerify() -> Bool {
    let filePath = NSHomeDirectory() + "/Planilha.csv"
    return FileManager.default.fileExists(atPath: filePath)
}
