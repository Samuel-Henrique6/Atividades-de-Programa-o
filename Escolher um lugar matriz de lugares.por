programa
{
	
	funcao inicio()
	{
		inteiro i = 0, j = 0, mat[6][6], cont = 0, fileira = 0, coluna = 0

		escreva("Matriz de inteiro de tamanho 6 x 6, com valores crescentes. De 1 a 36:\n\n")
		escreva("Escolha o lugar\n\n")
		escreva("   1	2	3	4	5	6\n")
		escreva("   ----------------------------------------\n")
		para(i = 0; i < 6; i++){
			escreva(i+1,"| ")
			para(j = 0; j < 6; j++){
				cont += 1
				mat[i][j] = cont
				escreva("L",mat[i][j],"	")
			}
			escreva("\n")
		} 
		escreva("\nDigite a fileira: ")
		leia(fileira)
		escreva("Digite a coluna: ")
		leia(coluna)
		escreva("Lugar escolhido é o: L",mat[fileira-1][coluna-1])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */