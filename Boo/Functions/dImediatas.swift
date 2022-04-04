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
    print("\t\t\tDespesa Imediata\n\n\n")
    print("\tEstas despesas estão fora do seu planejamento mensal de gastos\n")
    
    let tag: String = "Imediata" //classificao do tipo de gasto
    
    print("\tGasto:", terminator:" ") //o que voce comprou
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ")//valor da compra
    let valor = Double(readLine()!)
    
        
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto.isEmpty{
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            imediatas()
    } else {
        generic_d(valor: valor, gasto: gasto, tag: tag, data: formattedDate)
    }
}
