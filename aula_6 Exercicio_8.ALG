Algoritmo "semnome"
// Disciplina   : [UC4 - L�gica de Programa��o]
// Professor   : Richard Brosler
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/06/2022
procedimento bubblesort

var
li, lf : inteiro
troca: caracter


inicio

  para lin de 1 ate 29 faca
  para if de li ate 30 faca
  
    se nomes[li] < nomes[if] entao
    leia (nomes[lin])
    troca <- nomes[if]
    nomes [li] <- nomes [lf]
    nomes [lf] <- troca
    fimse
    fimpara
    
      fimprocedimento
      
      var
      // se�ao de declara�oes da variaveis
      nomes: vetor[1..30] de caracter
      lin: inteiro
      inicio
      // se�ao de comandos, procedimentos
      aleatorio on
      para lin de 1 ate 30 faca
      leia (nomes[lin] )
      fimpara
      aleatorio off
      bubblesort
      ecreval("-------------------")
      escreval("Listando os dados ordenados')
      para lin  de 1 ate 50 faca
      escreval (nome[lin])
      fimpara



Fimalgoritmo

