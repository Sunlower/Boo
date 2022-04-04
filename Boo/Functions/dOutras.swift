//
//  dOutras.swift
//  Boo
//
//  Created by Ieda Xavier on 23/03/22.
//

import Foundation

// Outras Despesas
// Aqui a pessoa irá adicionar as despesas que sao variaveis mas sabe que ira fazer no mes, como, alimentacao, transporte, material de limpeza, roupas essenciais, medicamentos, entretenimento e afins

/*
                     ---------------
                    |Outras Despesas|
                     ---------------
 
 Tipos de tag
 
 Despesas da Vida: Supermercado, materiais de limpeza, roupas essenciais, medicamentos, transportes...
 Cultura e Educação: Cursos e treinamento, ingressos para eventos culturais, livros...
 Entretenimento: Cinema, saída com os amigos, viagens curtas, cosméticos...
 Outros: Despesas que não são incluídos nas outras categorias
 
 
 Despesa:
 
 Tag:
 
 Valor:
 
 
 Deseja adicionar outra despesa? [Y/N]
 
 */
func dOutras(){ //dOutras(VarAlguma)
    print("""
    \t\t\tOutras Despesas\n\n\n
    \tTipos de tag\n
    \tDespesas da Vida: Supermercado, materiais de limpeza, roupas essenciais, medicamentos, transportes...\n
    \tCultura e Educação: Cursos e treinamento, ingressos para eventos culturais, livros...\n
    \tEntretenimento: Cinema, saída com os amigos, viagens curtas, cosméticos...\n
    \tOutros: Despesas que não são incluídos nas outras categorias\n\n
    """)
   
    print("\tDespesa:", terminator:" ")
    let gasto = readLine()!
    print("\n\tTag:", terminator:" ")
    let tag = readLine()!
    print("\n\tValor:", terminator:" ")
    let valor = Double(readLine()!)
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto.isEmpty{
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            dOutras()
    } else {
        generic_d(valor: valor, gasto: gasto, tag: tag, data: formattedDate)
    }
}
