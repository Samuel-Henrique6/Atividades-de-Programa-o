programa{

	funcao inicio()
	{
		inteiro opcao, i = 0, j = 0, n = 0, p = 0, fat = 0
		real  graus, rad, seno = 0.0, pot = 0.0
		const real PI = 3.1415
		escreva("Calcular Seno\n")
		escreva("1 - Calcular seno em graus\n")
		escreva("2 - Calcular seno em radianos\n")
		escreva("3 - Sair\n")
		leia(opcao)

		escolha (opcao){
			caso 1 :
				escreva("informe o ângulo do seno em graus: ")
				leia(graus)

				rad = graus * PI / 180
				pot = rad
				n = 1
				para(i = 1; i <= 5; i++){
					se( i == 1){
						pot = rad
					} senao {
						para(p = 1; p <= 2; p++){
							pot *= rad
						}
					}
					fat = n
					para(j = fat - 1; j > 0; j--){
						fat = fat * j
					}
					se(i % 2 == 0){
						seno -= pot / fat
					} senao {
						seno += pot / fat
					}
					n = n + 2
				}
				escreva(seno)
				pare
			caso 2 :
				escreva("informe o ângulo do seno em radianos: ")
				leia(rad)

				pot = rad
				n = 1
				para(i = 1; i <= 5; i++){
					se( i == 1){
						pot = rad
					} senao {
						para(p = 1; p <= 2; p++){
							pot *= rad
						}
					}
					fat = n
					para(j = fat - 1; j > 0; j--){
						fat = fat * j
					}
					se(i % 2 == 0){
						seno -= pot / fat
					} senao {
						seno += pot / fat
					}
					n = n + 2					
				}
				escreva(seno)
				pare
			caso 3:
				escreva("Programa encerrado!")
				pare 
			caso contrario :
				escreva("Opção Inválida, Programa encerrado!")
			
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */