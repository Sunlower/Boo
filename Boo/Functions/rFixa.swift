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
    let tag: String = "Fixa"
    print("\tRenda:", terminator:" ") //salário, bolsa, aluguel e afins
    let renda = readLine()!
    print("\n\tValor:", terminator:" ") //valor da renda
    let valor = Double(readLine()!)
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if renda.isEmpty {
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            rFixa()
    } else {
        generic_r(valor: valor, gasto: renda, tag: tag, data: formattedDate)
    }
    
}
