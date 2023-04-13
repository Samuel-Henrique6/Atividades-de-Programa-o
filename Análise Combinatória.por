programa{
	
	funcao inteiro permutar(inteiro fat){
		se(fat == 0){
			retorne 1
		}
		retorne fat * permutar(fat - 1)
	}
	
	funcao inteiro calcularArranjoSimples(inteiro n, inteiro k){
		inteiro arranjo, i, limite
		limite = n-k
		para (i = n-1; i > limite; i--){
			n = n * i
		}
		arranjo = n
		retorne arranjo
	}

	funcao inteiro calcularArranjoRepeticao(inteiro n, inteiro k){
		se(k == 0){
			retorne 1
		}
		retorne n * calcularArranjoRepeticao(n,k-1)
	}
	
	funcao inteiro calcularCombinacao(inteiro n, inteiro k){
		inteiro combinacao
		combinacao = calcularArranjoSimples(n,k) / permutar(k)
		retorne combinacao
	}
	
	funcao inicio()
	{
		inteiro opcao = 0, n1, n2, soma, resultado, n, k
		cadeia  opcao2 = ""
		escreva("----------------- Análise Combinatória -----------------\n\n")
		faca{
			escreva("1 - Permutação\n")
			escreva("2 - Arranjo simples\n")
			escreva("3 - Arranjo com repetição\n")
			escreva("4 - Combinação\n")
			escreva("5 - Sair\n")
			escreva("\nDigite a opção: \n")
			leia(opcao)
			limpa()
			escolha(opcao){
				caso 1:
					inteiro fat
					escreva("Digite um número para saber a permutação: ")
					leia(fat)
					resultado = permutar(fat)
					escreva(resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare	
				caso 2:
					escreva("Quantos elementos têm no conjunto: ")
					leia(n)
					escreva("Quantos elementos serão escolhidos desse conjunto: ")
					leia(k)
					resultado = calcularArranjoSimples(n,k)
					escreva("O arranjo é: ",resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 3:
					escreva("Quantos elementos têm no conjunto: ")
					leia(n)
					escreva("Quantos elementos serão escolhidos desse conjunto: ")
					leia(k)
					resultado = calcularArranjoRepeticao(n,k)
					escreva("O arranjo é: ",resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 4:
					escreva("Quantos elementos têm no conjunto: ")
					leia(n)
					escreva("Quantos elementos serão escolhidos desse conjunto: ")
					leia(k)
					resultado = calcularCombinacao(n,k)
					escreva("O arranjo é: ",resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 5:
					opcao2 = ""
					pare
				caso contrario:
				escreva("Opção inválida, escolha uma das opções abaixo!\n\n") 
				opcao2 = "S"
			}
					
		}enquanto(opcao2 == "S" ou opcao2 == "s")
		escreva("Obrigado por usar Análise Combinatória. Volte sempre!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 122; 
 * @DOBRAMENTO-CODIGO = [2, 9, 19, 26];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */