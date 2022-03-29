//
//  functions.swift
//  Boo
//
//  Created by Ieda Xavier on 22/03/22.
//

import Darwin
import Foundation

var lis : String = ""
var item: String = ""

//Interface
/*
 Bem vindo(a) ao Boo
 
 
 
 1. Despesas Imediatas
 
 2. Plano de Receita Mensal
 
 3. Plano de Despesas Mensal
 
 4. Sair
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func inicio(){
    print("\n\n\t\t\tBem vindo(a) ao Boo\n\n\n")
    
    print("\t1. Despesas Imediatas\n")
    print("\t2. Plano de Receita Mensal\n")
    print("\t3. Plano de Despesas Mensal\n")
    print("\t4. Sair\n\n")
    
    
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
        case "4":
            exit(0)
        default:
            item = ""
            print("\n\tItem Inválido, pressione qualquer tecla para escolher novamente.\n")
       }
    } while item == ""
}


//    Plano de Receita Mensal
/*
 Plano de Receitas Mensal
 
 
 
 Aqui você vai registar seu ganho mensal
 
 
 Renda fixa é o dinheiro que você tem disponível no início do mês
 Renda extra é o dinheiro que você ganha exporadicamente durante o mês
 Poupança é sua meta de economia no mês
 
 
    1. Renda Fixa
 
    2. Renda Extra
 
    3. Voltar
 
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func receitas (){
    repeat{
        print("\t\t\tPlano de Receitas Mensal\n\n\n")
        print("\tAqui você vai registar seu ganho mensal\n\n")
        print("\tRenda fixa é o dinheiro que você tem disponível no início do mês")
        print("\tRenda extra é o dinheiro que você ganha exporadicamente durante o mês")
        print("\tPoupança é sua meta de economia no mês\n\n")
        
        print("\t1. Renda Fixa\n")
        print("\t2. Renda Extra\n")
        print("\t3. Voltar\n")
        
        print("\n\tDigite o item que deseja acessar\n", terminator:"\n\t")
        var item = readLine()!
        switch item{
        case "1":
            rFixa()
        case "2":
            rExtra()
        case "3":
            inicio()
        default:
            item = ""
            print("\n\tItem inválido, pressione qualquer tecla para escolher novamente.\n")
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
 
 4. Voltar
 
 
 Digite o item que deseja acessar
 */

//FUNCAO INTERMEDIARIA
func despesas (){
    repeat{
        print("\t\t\tPlano de Despesas Mensal\n\n\n")
        print("\tEstes é o espaço para organizar suas despesas mensais e fazer o balanceamento de renda\n\n")
        print("\tDespesas fixas são despesas que terá durante um grande período de tempo como água, luz, entre outros...")
        print("\tOutras despesas são gastos que você sabe que terá no mês mas são variáveis como supermercado, transporte, lazer, educação e afins\n\n")
        print("\t1. Despesas Fixas\n")
        print("\t2. Outras Despesas\n")
        print("\t3. Poupança\n")
        print("\t4. Voltar\n")
        print("\n\tDigite o item que deseja acessar\n", terminator:"\n\t")
        var item = readLine()!
        
        switch item {
        case "1":
            dFixa()
        case "2":
            dOutras()
        case "3":
            poupanca()
        case "4":
            inicio()
        default:
            item = ""
            print("\n\tItem inválido, pressione qualquer tecla para escolher novamente.\n")
        }
        
    }while item == ""
    
}










