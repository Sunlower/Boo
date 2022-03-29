//
//  dFixas.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation

//Despesas Fixas
// Aqui a pessoa vai preencher as informcoes de despesas fixas, como aluguel, luz, agua, internet e afins


/*
 
                    --------------
                   |Despesas Fixas|
                    --------------
 
     Gasto:
     
     Valor:
     
     Vencimento:
     
     Deseja adicionar outro gasto? [Y/N]
 
 */


func dFixa(){
    print("\t\t\t Despesas Fixas\n\n\n")
    
    let tipo: String = "Despesa"
    let tag: String = "Fixa"
    
    print("\tDespesa:", terminator:" ")
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ")
    let valor = Double(readLine()!)
    print("\n\tVencimento (dd/mm/yyyy):", terminator:" ")
    let vence = readLine()!
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto == "" {
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            dFixa()
        }
            
        media -= Double(valor!)
        UserDefaults.standard.set(media, forKey: "media")
        UserDefaults.standard.synchronize()
            
        let lista: String = ("\(gasto.capitalized), \(tipo.capitalized), \(tag.capitalized), -\(valor!), \(vence),,\(media)")
        writeFile(lista: lista)
    
    
    print("\n\n\tDeseja adicionar outro gasto? [Y/N]\n", terminator:"\n\t")
    let t = readLine()?.lowercased()

    if t == "y"{
        dFixa()
    } else {
        inicio()
    }

}
