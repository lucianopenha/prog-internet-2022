Algoritmo "semnome"
// Disciplina   : [UC4 - L�gica de Programa��o]
// Professor   : Richard Brosler 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 04/06/2022
Var
// Se��o de Declara��es das vari�veis 
  func : vetor[1..20] de caractere
  sala : vetor[1..20] de real
  lin  : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  para lin de 1 ate 20 faca
    escreva("Digite o nome do funcion�rio",lin,":")
    leia(func[lin])
    escreva("Digite o sal�rio do funcion�rio",lin,":")
    leia (sala[lin])
    //aplicando o aumento de sal�rio
    sala[lin] <- sala[lin] * 1.08
  fimpara
  //listando os funcion�rios com o sal�rio reajustado
  para lin de 1 ate 20 faca
    escreval(func[lin]," - ", sala[lin])
  fimpara
Fimalgoritmo