Algoritmo "semnome"
// Disciplina   : [UC4 - L�gica de Programa��o]
// Professor   : Richard Brosler 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/05/2022
Var
// Se��o de Declara��es das vari�veis 
 planeta : inteiro
 peso : inteiro
 resultado : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   escreval ("Digite seu peso para saber quanto pesaria no planeta escolhido:")
   leia (peso)
   escreval ("Agora observe a tabela abaixo e digite o n�mero correspondente ao planeta desejado:")
   escreval ("1.Merc�rio")
   escreval ("2.V�nus")
   escreval ("3.Marte")
   escreval ("4.J�piter")
   escreval ("5.Saturno")
   escreval ("6.Urano")
   escreval ("Digite o n�mero correspondente:")
   leia (planeta)
   escolha(planeta)
   caso 1
   escreval ("Merc�rio, gravidade 0.37")
   resultado <- peso / 10 * 0.37
   escreval ("O seu peso em Merc�rio �:",resultado)
   fimescolha
   
Fimalgoritmo