//
//  rExtras.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation

//Renda Extra
/*
 Renda Extra
 
 Renda:
 
 Valor:
 
 
 Deseja adicionar outra renda? [Y/N]
 */
func rExtra(){
    print("\t\t\t Renda Extra\n\n\n")
    let tag: String = "Extra"
    print("\tRenda:", terminator:" ")//venda de algum objeto, imóvel, veículo e afins; recebimento de pagamento de algum emprestimo.
    let renda = readLine()!
    print("\n\tValor:", terminator:" ")//valor
    let valor = Double(readLine()!)
    
    ///esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if renda.isEmpty{
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            rExtra()
    } else {
        generic_r(valor: valor, gasto: renda, tag: tag, data: formattedDate)
    }
    
}
