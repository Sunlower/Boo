//
//  Poupanca.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation
//Poupança
//Aqui a pessoa vai especificar quanto está guardando no mes para alcancar uma meta

/*
                  --------
                 |Poupança|
                  --------
 
 Meta:
 
 Valor:
 
 
 Deseja adicionar outra meta? [Y/N]
 */

//FUNCAO DE ESCOLHA
func poupanca(){
    print("\t\t\tPoupança\n\n\n")
    let tag: String = "Economia"
    print("\tMeta:", terminator:" ") //Viagem longa, casa, carro
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ") //Valor
    let valor = Double(readLine()!)
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto.isEmpty{
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            dOutras()
    } else {
        generic_d(valor: valor, gasto: gasto, tag: tag, data: formattedDate)
    }
    
}
