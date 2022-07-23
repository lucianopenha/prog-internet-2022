Algoritmo "semnome"
// Disciplina   : [UC4 - Lógica de Programação]
// Professor   : Richard Brosler 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/05/2022
Var
// Seção de Declarações das variáveis 
 planeta : inteiro
 peso : inteiro
 resultado : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreval ("Digite seu peso para saber quanto pesaria no planeta escolhido:")
   leia (peso)
   escreval ("Agora observe a tabela abaixo e digite o número correspondente ao planeta desejado:")
   escreval ("1.Mercúrio")
   escreval ("2.Vênus")
   escreval ("3.Marte")
   escreval ("4.Júpiter")
   escreval ("5.Saturno")
   escreval ("6.Urano")
   escreval ("Digite o número correspondente:")
   leia (planeta)
   escolha(planeta)
   caso 1
   escreval ("Mercúrio, gravidade 0.37")
   resultado <- peso / 10 * 0.37
   escreval ("O seu peso em Mercúrio é:",resultado)
   fimescolha
   
Fimalgoritmo