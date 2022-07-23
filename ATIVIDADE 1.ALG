Algoritmo "Atividade 5"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/05/2022
Var
// Seção de Declarações das variáveis 

         intNumero : inteiro
         intUnidade: inteiro
         intDezena : inteiro
         intCentena : inteiro
         intInverso : inteiro



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   escreva("Digite um valor de até 3 digitos.:")
   leia (intNumero)
   intUnidade <- intNumero mod 10
   intDezena <- intNumero mod 100 div 10
   intCentena <- intNumero mod 1000 div 100
  intInverso <-((intUnidade*100) + (intDezena*10) + intCentena)
   escreval ("O valor invertido é ", intinverso)

Fimalgoritmo