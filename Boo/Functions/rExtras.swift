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
    let tipo: String = "Renda"
    let tag: String = "Extra"
    print("\tRenda:", terminator:" ")//venda de algum objeto, imóvel, veículo e afins; recebimento de pagamento de algum emprestimo.
    let renda = readLine()!
    print("\n\tValor:", terminator:" ")//valor
    let valor = Double(readLine()!)
    
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    
        if renda == "" {
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            rExtra()
        }
        media += Double(valor!)
        media = round(media * 100) / 100.0

        UserDefaults.standard.set(media, forKey: "media")
        UserDefaults.standard.synchronize()
        
        let lista: String = ("\(renda.capitalized), \(tipo), \(tag), \( valor!), \(formattedDate),,\(media)")
        writeFile(lista: lista)
    
    print("\n\n\tDeseja adicionar outra renda? [Y/N]", terminator:"\n\t")
    let t = readLine()?.lowercased()
    
    if t == "y"{
        rExtra()
    } else {
        inicio()
    }
}
