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
func dOutras(_ media: Double){ //dOutras(VarAlguma)
    var media1 = media
    print("\t\t\tOutras Despesas\n\n\n")
    
    
    print("\tTipos de tag \n")
    print("\tDespesas da Vida: Supermercado, materiais de limpeza, roupas essenciais, medicamentos, transportes...")
    print("\tCultura e Educação: Cursos e treinamento, ingressos para eventos culturais, livros...")
    print("\tEntretenimento: Cinema, saída com os amigos, viagens curtas, cosméticos...")
    print("\tOutros: Despesas que não são incluídos nas outras categorias\n\n")
    
    let tipo: String = "Despesa"
    print("\tDespesa:", terminator:" ")
    let gasto = readLine()!
    print("\n\tTag:", terminator:" ")
    let tag = readLine()!
    print("\n\tValor:", terminator:" ")
    let valor = Double(readLine()!)
    //esse if vai verificar se valor recebeu alguma letra ou valor nulo
    if gasto == "" {
            print("\n\tNenhum campo pode ficar em branco, preencha novamente")
            dOutras(media)
        }
        
        media1 = Double(valor!)
        UserDefaults.standard.set(media, forKey: "media")
        UserDefaults.standard.synchronize()
            
        let lista: String = ("\(gasto.capitalized), \(tipo.capitalized), \(tag.capitalized), -\(valor!), \(formattedDate),,\(media1)")
        writeFile(lista: lista)

    
    print("\n\n\tDeseja adicionar outra despesa? [Y/N]\n", terminator:"\n\t")
    let t = readLine()?.lowercased()
    
    if t == "y"{
        dOutras(media)
    } else {
        inicio(media)
    }}
