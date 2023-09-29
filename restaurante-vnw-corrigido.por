programa {
  inclua biblioteca Texto --> texto
  inclua biblioteca Util --> u
  cadeia nomeCliente
  cadeia escolhas_cliente[] = {"Escolher"}
  cadeia escolha_bebida[] = {"Vazio"}
  inteiro tamanho_escolhas = 0

  funcao menu_principal(){
    escreva("|       Lanchonete Restaurante VNW       |\n")
    escreva("__________________________________________\n")
    escreva("|             Menu Principal             |\n")
    escreva("| 1. PRATO |2. BEBIDAS |3. SAIR/CANCELAR |\n")
    escreva("__________________________________________\n")
  }

  funcao menu_bebidas(){
    escreva("____________________________________\n")
    escreva("|              Bebidas             |\n")
    escreva("____________________________________\n")
    escreva("|1.Sucos | 2.Refrigerante | 3.Agua |\n")
    escreva("____________________________________\n")
  }

  funcao escolhaBebida(){
    inteiro escolher
      u.aguarde(1000)
      limpa()
      escreva("\nGostaria de uma bebiba? 1- SIM ou 2- NAO\n")
      leia(escolher)

    escolha(escolher){
      caso 1:
        menu_bebidas()
        inteiro escolhaBebida
        leia(escolhaBebida)
        escolha(escolhaBebida){
          caso 1:
          escolha_bebida[0] = "Suco"
           pare
          caso 2:
          escolha_bebida[0] = "Refrigerante"
            pare
          caso 3:
          escolha_bebida[0] = "Agua"
            pare
          caso contrario:
            escreva("OPCAO INVALIDA")
           pare 
        }
        pedidoFinalizado()
      pare
      caso 2:
        pedidoFinalizado()
      pare
      caso contrario:
        escreva("OPCAO INVALIDA, TENTE NOVAMENTE!")
        escolhaBebida()
    }
  }

 funcao pedidoFinalizado() {
  limpa()
    escreva("SEU PEDIDO FOI FINALIZADO! VOLTE SEMPRE \n")
    para(inteiro j = 0; j < tamanho_escolhas; j++){
      escreva(" Prato: " + escolhas_cliente[j] + "\n Bebida: " +  escolha_bebida[j] + "\n")
      escreva("\n")
      
    se(escolhas_cliente[0] != "Escolher" ou escolha_bebida[0] != "Vazio"){
      escreva("ATE MAIS, VOLTE SEMPRE!!")
    }
  }
}

 funcao inicio() {
  inteiro opMnPrin = 1,opPratos = 0, opBebidas = 0
  escreva("Antes de comecar, por favor informe seu nome: ")
  leia(nomeCliente)
  escreva("\n")

  faca {
    menu_principal()
    leia(opMnPrin)
    escolha(opMnPrin){      
      caso 1:
        menu_pratos()
        leia(opPratos) 
      pare
      caso 2: 
        menu_bebidas()
        leia(opBebidas)
      pare
      caso 3:
        escreva("\n\n******SAINDO DO MENU RESTAURANTE*******\n\n")
      pare
      caso contrario:
        escreva("OPCAO INVALIDA!\n")
        escreva(" ")
        opMnPrin = 0
    }
  } enquanto (opMnPrin > 1 e opMnPrin < 3)
}

  funcao menu_pratos(){
    inteiro p = 0
    escreva("____________________________________\n")
    escreva("|          Pratos Principais       |\n")
    escreva("____________________________________\n")
    escreva("|            1.Sushi               |\n")
    escreva("|            2.Macarrao            |\n")
    escreva("|            3.Hamburguer          |\n")
    escreva("|            4.Cachorro quente     |\n")
    escreva("|            5.Sair                |\n")
    escreva("____________________________________\n")
    escreva(nomeCliente, ", escolha o seu prato: ")
    leia(p)
    limpa()

    faca {    
      escolha(p){      
      caso 1:
        menu_sushi()
      pare
      caso 2:
        menu_macarrao()
      pare
      caso 3:
        menu_hamburguer()
      pare
      caso 4:
        menu_hotdog()
      pare
      caso 5:
        escreva("\n\n******SAINDO DO MENU DE PRATOS*******\n\n")
        menu_principal()
      pare
      caso contrario:
        escreva("Opcao Invalida! Tente novamente\n")
        menu_pratos()
      }
      p = 0
    } enquanto (p > 1 e p < 3)
  } 

  funcao menu_hamburguer(){
      inteiro op1 = 0
      escreva("\n")
      escreva("____________________________________\n")
      escreva("|         Hamburguer               |\n")
      escreva("____________________________________\n")
      escreva("|            1.Carne Bovina        |\n")
      escreva("|            2.Frango              |\n")
      escreva("|            3.Sair                |\n")
      escreva("____________________________________\n")
      leia(op1)

    faca {    
      escolha(op1){
      caso 1:
        escreva(" Seu hamburguer vem com: Carne Bovina / Cheddar / Alface / Tomate / Ketchup / Maionese")
        escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de carne bovina foi anotado")
        escolhas_cliente[tamanho_escolhas] = "Hamburguer com Carne Bovina"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare 
      caso 2:
        escreva(" Seu hamburguer vem com: Carne Frango / Cheddar / Alface / Tomate / Ketchup / Maionese")
        escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de frango foi anotado")
        escolhas_cliente[tamanho_escolhas] = "Hamburguer com Carne de Frango"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare 
      caso 3:
        escreva("\n\n******SAINDO DO MENU Hamburguer*******\n\n")
        menu_pratos()
      pare 
      caso contrario:
       escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
       menu_hamburguer()
      }
      op1 = 0
    } enquanto (op1 > 1 e op1 < 3)
  }

  funcao menu_hotdog(){
    inteiro op2 = 0
    inteiro bebida
      escreva("\n")
      escreva("____________________________________\n")
      escreva("|             HotDog               |\n")
      escreva("____________________________________\n")
      escreva("|       1.Salsicha Tradicional     |\n")
      escreva("|            2.Linguica            |\n")
      escreva("|            3. Sair               |\n")
      escreva("____________________________________\n")
      leia(op2)
    faca {    
      escolha(op2){
      caso 1:
        escreva("Seu HotDog acompanhara: Salsicha Tradicional, Pao, Queijo, Batata palha, Ketchup, Maionese")
        escreva("\n", "Tudo certo ", nomeCliente, "! seu pedido de hotdog com Salsicha Tradicional foi anotado\n\n")
        escolhas_cliente[tamanho_escolhas] = "Cachorro Quente de Salsicha"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 2:
      escreva("Seu HotDog acompanhara: Linguiça, Pao, Queijo, Batata palha, Ketchup, Maionese")
        escreva("\n", "Tudo certo ", nomeCliente, "! seu pedido de hotdog com Linguiça foi anotado.\n\n")
        escolhas_cliente[tamanho_escolhas] = "Cachorro Quente de Linguiça"
        tamanho_escolhas = tamanho_escolhas + 1
        escolhaBebida()
      pare
      caso 3:
        escreva("\n\n******SAINDO DO MENU HotDog*******\n\n")
        menu_pratos()
      pare
      caso contrario:
        escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
        menu_hotdog()
      }
      op2 = 0
    } enquanto (op2 > 1 e op2 < 3)
  }

  funcao menu_macarrao(){
    inteiro op3 = 0 
      escreva("\n")
      escreva("____________________________________\n")
      escreva("|         MACARRAO                 |\n")
      escreva("____________________________________\n")
      escreva("|            1. Espaguete          |\n")
      escreva("|            2. Penne              |\n")
      escreva("|            3. Sair               |\n")
      escreva("____________________________________\n")
      escreva(nomeCliente, ", escolha o seu pedido: ")
      leia(op3)

      faca {    
        escolha(op3){
        caso 1:
          escreva("Seu macarrao vem com: Macarrao espaguete/ Molho de tomate / Bacon / Cogumelos / Espinafre")
          escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de espaguete foi anotado")
          escolhas_cliente[tamanho_escolhas] = "Espaguete"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 2:
          escreva("Seu macarrao vem com: Macarrao penne/ Molho pesto / Bacon / Cogumelos / Espinafre")
          escreva("\n \n", "Tudo certo ", nomeCliente, " seu pedido de penne foi anotado")
          escolhas_cliente[tamanho_escolhas] = "Penne"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 3:
          escreva("\n\n******SAINDO DO MENU MACARRAO*******\n\n")
          menu_pratos()
        pare
        caso contrario:
          escreva("OPCAO INVALIDA! TENTE NOVAMENTE \n")
          menu_macarrao()
        }
        op3 = 0
      } enquanto (op3 > 1 e op3 < 3)
  }

  funcao menu_sushi(){
    inteiro escolhaMenu, escolhaPeixe
    cadeia peixe[2] = {"Atum", "Salmao"}
    cadeia descricaoIngredientes = (", seu sushi com: arroz, nori, legumes e "), descricaoPedidoPronto = (" ficara pronto em instantes.")

		limpa()
    escreva("Os acompanhamentos padrao sao: arroz, nori, legumes e peixe cru.\n\n")
    escreva("____________________________________\n")
    escreva("|              Sushi               |\n")
    escreva("____________________________________\n")
    escreva("|         1. ", peixe[0],"         |\n")
    escreva("|         2. ", peixe[1],"         |\n")
    escreva("|         3. Sair                  |\n")
    escreva("____________________________________\n")
		escreva("\nEscolha o peixe: ")
		leia(escolhaPeixe)

    limpa()
    faca { 
      escolha (escolhaPeixe) {
        caso 1:
          escreva(nomeCliente, descricaoIngredientes, texto.caixa_baixa(peixe[0]), descricaoPedidoPronto)
          escolhas_cliente[tamanho_escolhas] = "Sushi de Atum"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 2:
          escreva(nomeCliente, descricaoIngredientes, texto.caixa_baixa(peixe[1]), descricaoPedidoPronto)
          escolhas_cliente[tamanho_escolhas] = "Sushi de Salmão"
          tamanho_escolhas = tamanho_escolhas + 1
          escolhaBebida()
        pare
        caso 3:
          escreva("\n\n******SAINDO DO MENU Sushi*******\n\n") 
          menu_pratos()
        pare
        caso contrario:
          escreva("Escolha invalida, por favor, tente novamente com um peixe que esteja disponivel nas opcoes oferecidas.\n\n")
          u.aguarde(4000)
          menu_sushi()
      }
      escolhaPeixe = 0
    } enquanto (escolhaPeixe > 1 e escolhaPeixe < 3)
  }
}