Algoritmo "semnome"
// Disciplina   : [UC4 - L�gica de Programa��o]
// Professor   : Richard Brosler 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 28/05/2022
Var
// Se��o de Declara��es das vari�veis 
  strCPF : caracter
  bolTeste : logico
  intSoma, intI, intBase, intDigito : inteiro
  intDgV1, intDgV2 : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  escreval("Programa validador de CPF")
  escreval("Digite o n�mero do CPF sem pontua��o:")
  leia(strCPF)
  bolTeste := (strCPF = "00000000000")
  bolTeste := bolTeste ou (strCPF = "11111111111")
  bolTeste := bolTeste ou (strCPF = "22222222222")
  bolTeste := bolTeste ou (strCPF = "33333333333")
  bolTeste := bolTeste ou (strCPF = "44444444444")
  bolTeste := bolTeste ou (strCPF = "55555555555")
  bolTeste := bolTeste ou (strCPF = "66666666666")
  bolTeste := bolTeste ou (strCPF = "77777777777")
  bolTeste := bolTeste ou (strCPF = "88888888888")
  bolTeste := bolTeste ou (strCPF = "99999999999")

  se ( bolTeste ) ou (compr(strCPF)<> 11) entao
    escreval("CPF inv�lido!")
  senao
    intSoma := 0
    intBase := 11
    para intI de 1 ate 9 faca
      //Obtendo o d�gito do cpf e passando para inteiro
      intDigito := caracpnum(copia(strCPF,intI,1))
      //Multiplicando o d�gito pela base - inti e somando
      intSoma := intSoma + intDigito *(intBase - intI)
    fimpara
    //Calculando o primeiro d�gito verificador
    intDgV1 := 11 - intSoma mod 11
    se intDgV1>9 entao
      intDgV1 := 0
    fimse
    //Calculando o segundo d�gito verificado
    intSoma := 0
    intBase := 12
    para intI de 1 ate 10 faca
      //Obtendo o d�gito do cpf e passando para inteiro
      intDigito := caracpnum(copia(strCPF,intI,1))
      //Multiplicando o d�gito pela base - inti e somando
      intSoma := intSoma + intDigito *(intBase - intI)
    fimpara
    //Calculando o segundo d�gito verificador
    intDgV2 := 11 - intSoma mod 11
    se intDgV2>9 entao
      intDgV2 := 0
    fimse
    se ( caracpnum(copia(strCPF,10,1))<>intDgV1 ) ou ( caracpnum(copia(strCPF,11,1))<>intDgV2 ) entao
      escreval("CPF Inv�lido")
    senao
      escreval("CPF V�lido")
    fimse
  fimse
Fimalgoritmo