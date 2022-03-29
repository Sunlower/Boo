//
//  dImediatas.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation

//    Despesas Imediatas
/*
 Despesas Imediatas
 
 
 
 Estas despesas estão fora do seu planejamento de despesas mensal
 
 Gasto:
 
 Tipo de Gasto:
 
 Valor:
 
 Deseja adicionar outro gasto? [Y/N]
 */

//FUNCAO DE ESCOLHA
func imediatas (){
    print("\t\t\t|Despesa Imediata\n\n\n")
    print("\tEstas despesas estão fora do seu planejamento mensal de gastos\n")
    
    let tipo: String = "Despesa" //classificacao do gasto
    let tag: String = "Imediata" //classificao do tipo de gasto
    
    print("\tGasto:", terminator:" ") //o que voce comprou
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ")//valor da compra
    let valor = Double(readLine()!)
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto == "" {
        print("\n\tNenhum campo pode ficar em branco, preencha novamente:")
        imediatas()
    }
        
        media -= Double(valor!)
        UserDefaults.standard.set(media, forKey: "media")
        UserDefaults.standard.synchronize()
        
    let lista: String = ("\(gasto.capitalized), \(tipo.capitalized), \(tag.capitalized), \(valor!), \(formattedDate),,\(media)")
        writeFile(lista: lista)
    
    
    print("\n\n\tDeseja adicionar outro gasto? [Y/N]\n", terminator:"\n\t")
    let t = readLine()?.lowercased()
    
    if t == "y"{
        imediatas()
    } else {
        inicio()
    }
}
