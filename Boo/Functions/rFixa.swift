//
//  rFixa.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation
//Renda Fixa
/*
 
                  ----------
                 |Renda Fixa|
                  ----------
 
 Renda:
 
 Valor:
 
 
 Deseja adicionar outra renda? [Y/N]
 */

//FUNCAO DE ESCOLHA
func rFixa(){
    print("\t\t\tRenda Fixa\n\n\n")
    let tipo: String = "Renda"
    let tag: String = "Fixa"
    
    print("\tRenda:", terminator:" ") //salário, bolsa, aluguel e afins
    let renda = readLine()!
    print("\n\tValor:", terminator:" ") //valor da renda
    let valor = Double(readLine()!)
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
        if renda == "" {
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            rFixa()
        }
        media += Double(valor!)
        media = round(media * 100) / 100.0

        UserDefaults.standard.set(media, forKey: "media")
        UserDefaults.standard.synchronize()
        
        let lista: String = ("\(renda.capitalized), \(tipo.capitalized), \(tag.capitalized), \(valor!), \(formattedDate),,\(media)")
        writeFile(lista: lista)
    
    
    
    print("\n\n\tDeseja adicionar outra renda? [Y/N]", terminator:"\n\t")
    let t = readLine()?.lowercased()
    
    if t == "y"{
        rFixa()
    } else {
        inicio()
    }
}
