Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 11/06/2022
procedimento inicializacao
inicio
   ultdia [1] <-20
   ultdia [2] <-19
   ultdia [3] <-20
   ultdia [4] <-20
   ultdia [5] <-20
   ultdia [6] <-20
   ultdia [7] <-21
   ultdia [8] <-22
   ultdia [9] <-22
   ultdia [10] <-22
   ultdia [11] <-21
   ultdia [12] <-21

   signos [1] <-"Capricornio"
   signos [2] <-"Aquario"
   signos [3] <- "Peixes"
   signos [4] <- "Aries"
   signos [5] <- "Touro"
   signos [6] <- "G�meos"
   signos [7] <-  "C�ncer"
   signos [8] <-  "Le�o"
   signos [9] <-  "Virgem"
   signos [10] <-   "Libra"
   signos [11] <-  "Escorpi�o"
   signos [12] <-   "Sagitario"
   fimprocedimento

Var
   // Se��o de Declara��es das vari�veis
   pessoa_dtnas : vetor[1..20] de inteiro
   pessoa_nome : vetor [1..20] de caracter
   ultdia : vetor [1..12] de inteiro
   signos: vetor[1..12] de caracter
   lin: inteiro
   dd, mm : inteiro



Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   aleatorio on
   aleatorio 1,31
   para lin de 1 ate 20 faca
      leia (dd)
      leia (mm)
      mm <- mm mod 12
      se (mm=0) entao
         mm <- 12
      fimse
      escolha (mm)
      caso 2
         dd <- dd mod 28
         se (dd = 0) entao
            dd <-28
         fimse
         // verifiv se o mes � fev
      caso 4,6,9,11
         dd <- dd mod 30
         se (dd = 0) entao
            dd <- 30
         fimse

      fimescolha
      // atribuindo a data no formato ddmm
      pessoa_dtnas[lin] <- dd * 100 + mm
      // digitando o nome da pessoa
      leia(pessoa_nome[lin])
   fimpara
   aleatorio off
   // inicializa��o dos valores
   inicializacao
   // aqui come�a a logica para mostrar o signo
   para lin de 1 ate 20 faca
      mm<- pessoa_dtnas[lin] mod 100
      dd <- pessoa_dtnas[lin] div 100
      se dd > ultdia[mm] entao
         mm <- (mm +1 ) mod 12
         se mm = 0 entao
            mm <- 12
         fimse
      fimse
      escreval(pessoa_nome[lin],"-", pessoa_dtnas[lin]," - ",signos[mm] )

   fimpara



Fimalgoritmo