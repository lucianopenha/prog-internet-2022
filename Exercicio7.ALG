Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/05/2022
Var
// Se��o de Declara��es das vari�veis 
     numero : inteiro
   cnt : inteiro
   menor : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   // Se??o de Comandos, procedimento, fun??es, operadores, etc...
   escreval("Usando enquanto")
   cnt <- 1
   enquanto cnt <= 5 faca
      escreval("Digite um numero:")
      leia (numero)
      se cnt > 1 entao
         se numero < menor entao
            menor <- numero
         fimse
      senao
         menor <- numero
      fimse
      cnt <- cnt + 1
   fimenquanto
   escreval("O menor numero  ", menor)
   //repita
   escreval("Usando o repita")
   escreval("-------------------")
   cnt <- 1
   repita
      escreval("Digite um numero:")
      leia (numero)
      se cnt > 1 entao
         se numero < menor entao
            menor <- numero
         fimse
      senao
         menor <- numero
      fimse
      cnt <- cnt + 1
   ate cnt > 5
   escreval("O menor numero  ", menor)
   //Para
   escreval("Usando o Para")
   escreval("-------------------")
   para cnt de 1 ate 5 passo 1 faca
      escreval("Digite um numero:")
      leia (numero)
      se cnt > 1 entao
         se numero < menor entao
            menor <- numero
         fimse
      senao
         menor <- numero
      fimse
   fimpara
   escreval("O menor numero  ", menor)

Fimalgoritmo

Fimalgoritmo