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
    
    let tag: String = "Fixa"
    
    print("\tDespesa:", terminator:" ")
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ")
    let valor = Double(readLine()!)
    print("\n\tVencimento (dd/mm/yyyy):", terminator:" ")
    let vence = readLine()!
    
    if gasto.isEmpty{
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            dFixa()
    } else {
        generic_d(valor: valor, gasto: gasto, tag: tag, data: vence)
    }
}
