//
//  functions.swift
//  Boo
//
//  Created by Ieda Xavier on 22/03/22.
//


//import Glibc
import Foundation

var lis : String = ""
var item: String = ""

//Interface
/*
 Bem vindo(a) ao Boo
 
 
 
 1. Despesas Imediatas
 
 2. Plano de Receita Mensal
 
 3. Plano de Despesas Mensal
 
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func inicio(){
    //system("clear")
    print("\t\t\tBem vindo(a) ao Boo\n\n\n")
    
    print("\t1. Despesas Imediatas\n")
    print("\t2. Plano de Receita Mensal\n")
    print("\t3. Plano de Despesas Mensal\n")
    repeat{
        print("\n\tDigite o item que deseja acessar\n", terminator:"\n\t")
        
        var item = readLine()!
        switch item{
        case "1":
            imediatas()
        case "2":
            receitas()
        case "3":
            despesas()
        default:
            item = ""
            print("\n\tItem Inválido, pressione qualquer tecla para escolher novamente.\n")
            readLine()!
        }
    } while item == ""
}
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
    //system("clear")
    print("\t\t\tDespesas Imediatas\n\n\n")
    print("\tEstas despesas estão fora do seu planejamento mensal de gastos\n")
    let tipo: String = "Despesa" //classificacao do gasto
    
    print("\tGasto:", terminator:" ") //o que voce comprou
    let gasto = readLine()!
    print("\n\tTipo de Gasto:", terminator:" ")//qual tipo dessa compra: alimento, lazer e afins
    let tag = readLine()!
    print("\n\tValor:", terminator:" ")//valor da compra
    let valor : String = readLine()!
    if (NumberFormatter().number(from: valor)?.doubleValue) != nil {
    if gasto == "" || tag == "" || valor == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        imediatas()
    }
    let lista: String = ("\(gasto), \(tipo), \(tag), -\(valor), \(formattedDate)")
    writeFile(lista: lista)
    } else {
        print ("\n\tNão pode inserir letras neste campo\n")
        imediatas()
    }
    
    print("\n\n\tDeseja adicionar outro gasto? [Y/N]\n", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        imediatas()
    } else {
        inicio()
    }
}

//    Plano de Receita Mensal
/*
 Plano de Receitas Mensal
 
 
 
 Aqui você vai registar seu ganho mensal
 
 
 Renda fixa é o dinheiro que você tem disponível no início do mês
 Renda extra é o dinheiro que você ganha exporadicamente durante o mês
 Poupança é sua meta de economia no mês
 
 
 Renda Fixa
 
 Renda Extra
 
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func receitas (){
    repeat{
        //system("clear")
        print("\t\t\tPlano de Receitas Mensal\n\n\n")
        print("\tAqui você vai registar seu ganho mensal\n\n")
        print("\tRenda fixa é o dinheiro que você tem disponível no início do mês")
        print("\tRenda extra é o dinheiro que você ganha exporadicamente durante o mês")
        print("\tPoupança é sua meta de economia no mês\n\n")
        
        print("\t1. Renda Fixa\n")
        
        print("\t2. Renda Extra\n")
        
        print("\n\tDigite o item que deseja acessar\n", terminator:"\n\t")
        var item = readLine()!
        switch item{
        case "1":
            rFixa()
        case "2":
            rExtra()
        default:
            item = ""
            print("\n\tItem inválido, pressione qualquer tecla para escolher novamente.\n")
            readLine()!
        }
    } while item == ""
}

//    Plano de Despesas Mensal
/*
 Plano de Despesas Mensal
 
 
 
 Estes é o espaço para organizar suas despesas mensais e fazer o balanceamento de renda
 
 
 Despesas fixas são despesas que terá durante um grande período de tempo como água, luz, entre outros...
 Outras despesas são gastos que você sabe que terá no mês mas são variáveis como supermercado, transporte, lazer, educação...
 
 
 1. Despesas Fixas
 
 2. Outras Despesas
 
 3. Poupança
 
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func despesas (){
    repeat{
        //system("clear")
        print("\t\t\tPlano de Despesas Mensal\n\n\n")
        print("\tEstes é o espaço para organizar suas despesas mensais e fazer o balanceamento de renda\n\n")
        print("\tDespesas fixas são despesas que terá durante um grande período de tempo como água, luz, entre outros...")
        print("\tOutras despesas são gastos que você sabe que terá no mês mas são variáveis como supermercado, transporte, lazer, educação e afins\n\n")
        print("\t1. Despesas Fixas\n")
        
        print("\t2. Outras Despesas\n")
        
        print("\t3. Poupança\n")
        print("\n\tDigite o item que deseja acessar\n", terminator:"\n\t")
        var item = readLine()!
        
        switch item {
        case "1":
            dFixa()
        case "2":
            dOutras()
        case "3":
            poupanca()
        default:
            item = ""
            print("\n\tItem inválido, pressione qualquer tecla para escolher novamente.\n")
            readLine()!
        }
        
    }while item == ""
    
}
//Renda Fixa
/*
 Renda Fixa
 
 Renda:
 
 Valor:
 
 
 Deseja adicionar outra renda? [Y/N]
 */

//FUNCAO DE ESCOLHA
func rFixa(){
    //system("clear")
    print("\t\t\tRenda Fixa\n\n\n")
    let tipo: String = "Renda"
    let tag: String = "Fixa"
    
    print("\tRenda:", terminator:" ") //salário, bolsa, aluguel e afins
    let renda = readLine()!
    print("\n\tValor:", terminator:" ") //valor da renda
    let valor = readLine()!
    
    if renda == "" || valor == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        readLine()!
        rFixa()
    }
    
    let lista: String = ("\(renda), \(tipo), \(tag), \(valor), \(formattedDate)")
    writeFile(lista: lista)
    
    
    print("\n\n\tDeseja adicionar outra renda? [Y/N]", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        rFixa()
    } else {
        inicio()
    }
}

//Renda Extra
/*
 Renda Extra
 
 Renda:
 
 Valor:
 
 
 Deseja adicionar outra renda? [Y/N]
 */
func rExtra(){
    //system("clear")
    print("\t\t\tRenda Extra\n\n\n")
    let tipo: String = "Renda"
    let tag: String = "Extra"
    print("\tRenda:", terminator:" ")//venda de algum objeto, imóvel, veículo e afins; recebimento de pagamento de algum emprestimo.
    let renda = readLine()!
    print("\n\tValor:", terminator:" ")//valor
    let valor = readLine()!
    
    if renda == "" || valor == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        readLine()!
        rExtra()
    }
    
    let lista: String = ("\(renda), \(tipo), \(tag), \(valor), \(formattedDate)")
    writeFile(lista: lista)
    print("\n\n\tDeseja adicionar outra renda? [Y/N]", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        rExtra()
    } else {
        inicio()
    }
}

//Poupança
/*
 Poupança
 
 Meta:
 
 Valor:
 
 Em quanto tempo (em meses):
 
 
 Deseja adicionar outra meta? [Y/N]
 */

//FUNCAO DE ESCOLHA
func poupanca(){
    //system("clear")
    print("\t\tPoupança\n\n")
    let tipo: String = "Despesa"
    let tag: String = "Economia"
    print("\tMeta:", terminator:" ") //Viagem longa, casa, carro
    let poupa = readLine()!
    print("\n\tValor:", terminator:" ") //Valor
    let valor = readLine()!
    if poupa == "" || valor == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        readLine()!
        poupanca()
    }
    //enviar valor pra planilha com a data
    let lista: String = ("\(poupa), \(tipo), \(tag), -\(valor), \(formattedDate)")
    writeFile(lista: lista)
    print("\n\n\tDeseja adicionar outra meta? [Y/N]\n", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        poupanca()
    } else {
        inicio()
    }
}

//    Despesas Fixas
/*
 Despesas Fixas
 
 
 
 
 Gasto:
 
 Valor:
 
 Vencimento:
 
 Deseja adicionar outro gasto? [Y/N]
 */
func dFixa(){
    // system("clear")
    print("\t\t\tDespesas Fixas\n\n\n")
    let tipo: String = "Despesa"
    let tag: String = "Fixa"
    print("\tDespesa:", terminator:" ")
    let gasto = readLine()!
    print("\n\tValor:", terminator:" ")
    let valor = readLine()!
    print("\n\tVencimento:", terminator:" ")
    let vence = readLine()!
    if gasto == "" || valor == "" || vence == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        readLine()!
        dFixa()
    }
    //enviar valor pra planilha com a data
    let lista: String = ("\(gasto), \(tipo), \(tag), -\(valor), \(vence)")
    writeFile(lista: lista)
    print("\n\n\tDeseja adicionar outra despesa? [Y/N]\n", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        dFixa()
    } else {
        inicio()
    }}

//    Outras Despesas
/*
 Outras Despesas
 
 
 
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
func dOutras(){
    
    //system("clear")
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
    let valor = readLine()!
    if gasto == "" || valor == "" || tag == ""{
        print("\n\tNenhum campo pode ficar em branco, preencha novamente")
        readLine()!
        dOutras()
    }
    //enviar valor pra planilha com a data
    let lista: String = ("\(gasto), \(tipo), \(tag), -\(valor), \(formattedDate)")
    writeFile(lista: lista)
    
    print("\n\n\tDeseja adicionar outra despesa? [Y/N]\n", terminator:"\n\t")
    let t = readLine()!
    
    if t == "Y"{
        dOutras()
    } else {
        inicio()
    }}


