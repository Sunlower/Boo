//
//  csvCreator.swift
//  Boo
//
//  Created by Ieda Xavier on 21/03/22.
//

import Foundation



func createFile(){
    let filePath = NSHomeDirectory() + "/planilha.csv"
    if fileVerify() == false {
        (FileManager.default.createFile(atPath: filePath, contents: nil, attributes: nil))
        if fileVerify() {
            print("Arquivo criado com sucesso.")
        } else {
            print("O Arquivo não foi criado, tente novamente.")
        }
    } else {
        print("Arquivo já existe")
    }
}

func writeFile(pass_name: String, password: String){
    let filePath = NSHomeDirectory() + "/planilha.csv"
    do {
        let handle = try FileHandle(forWritingTo: URL(fileURLWithPath: filePath))
        handle.seekToEndOfFile()
        handle.write("\(pass_name)  ->  \(password)\n".data(using: .utf8)!)
        handle.closeFile()
    } catch {
        print(error)
    }
}

func fileVerify() -> Bool {
    let filePath = NSHomeDirectory() + "/planilha.csv"
    return FileManager.default.fileExists(atPath: filePath)
}
