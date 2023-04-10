programa{
	inclua biblioteca Matematica
	funcao inicio()
	{

		 real peso, altura, IMC
		 const real BAIXO_PESO_LIM = 18.5
		 const real PESO_ADEQUADO_LIM = 25.0
		 const real SOBREPESO_LIM = 30.0
		 const cadeia BAIXO_PESO = "\nBaixo Peso"
		 const cadeia PESO_ADEQUADO = "\nPeso Normal"
		 const cadeia SOBREPESO = "\nSobre Peso"
		 const cadeia OBESIDADE = "\nObesidade"
	
	      escreva("Peso (KG): ")
	      leia(peso)
	      escreva("Altura (m): ")
	      leia(altura)
	      IMC = Matematica.arredondar(peso / (altura * altura), 2)
	      escreva("IMC: ", IMC)
	      se(IMC > SOBREPESO_LIM) {
	             escreva(OBESIDADE)
	      } senao se(IMC >= PESO_ADEQUADO_LIM){
	             escreva(SOBREPESO)
	      } senao se(IMC >= BAIXO_PESO_LIM){
	             escreva(PESO_ADEQUADO)
	      } senao{
	             escreva(BAIXO_PESO)
	      }
	 }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */