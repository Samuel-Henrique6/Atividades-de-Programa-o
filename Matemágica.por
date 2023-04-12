programa{
	funcao inteiro fatorar(inteiro fat){
		inteiro i
		
		escreva(fat)
		para (i = fat-1; i > 0; i--){
			fat = fat * i
			escreva(" * ", i)
		}
		escreva(" = ")
		
		retorne fat 
	}

	funcao inteiro calcularFibonacci(inteiro termo){
		inteiro f1 = 0, f2 = 1, f3 = 0, i = 0

		enquanto(i < termo){
			se(i == 0){
				f3 = 1
			} senao {
				f3 = f2 + f1
				f1 = f2
				f2 = f3
			}
			i++
		}
		retorne f3
	}

	funcao inteiro calcularPotencia(inteiro base, inteiro expoente){
		inteiro resultado, aux, i, j

		resultado = 1
		para(i = 1; i <= expoente; i++){
			aux = 0
			para(j = 1; j <= base; j++){
				aux += resultado
			}
			resultado = aux
		}
		retorne resultado
	}

	funcao real calcularSeno(real graus, real adendos){
		inteiro i = 0, j = 0, n = 0, p = 0, fat = 0
		real  rad, seno = 0.0, pot = 0.0
		const real PI = 3.14159265358979323846
		se(graus > 180){
			graus -= 180
			rad = -(graus * PI / 180)
		} senao{
			rad = graus * PI / 180
		}
		pot = rad
		n = 1
		para(i = 1; i <= adendos; i++){
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
		retorne seno
	}
	
	funcao inicio(){
		inteiro opcao = 0, n1, n2, soma, resultado
		cadeia  opcao2 = ""
		escreva("----------------- MATEMÁGICA -----------------\n\n")
		faca{
			escreva("1 - Calcular Fatorial de um número\n")
			escreva("2 - Exibir o n-ésimo termo da sequencia de Fibonacci\n")
			escreva("3 - Calcular a potência de um número usando apenas adição\n")
			escreva("4 - Calcular seno de um ângulo informado\n")
			escreva("5 - Sair\n")
			escreva("\nDigite a opção: \n")
			leia(opcao)
			limpa()
			escolha(opcao){
				caso 1:
					inteiro fat
					escreva("Digite um número para saber o seu fatorial: ")
					leia(fat)
					resultado = fatorar(fat)
					escreva(resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare	
				caso 2:
					inteiro termo
					escreva("Digite o termo desejado da sequência Fibonacci: ")
					leia(termo)
					resultado = calcularFibonacci(termo)
					escreva("O ",termo ,"º termo é: ",resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 3:
					inteiro base, expoente
					escreva("Informe os termos para calcular potência: \n")
					escreva("Base: ")
					leia(base)
					escreva("Expoente: ")
					leia(expoente)
					resultado = calcularPotencia(base,expoente)
					escreva("A potência é: ", resultado)
					escreva("\nGotaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 4:
					real  graus, rad, seno, adendos
					const real PI = 3.14159265358979323846
					faca{
						escreva("Calcular Seno\n")
						escreva("1 - Calcular seno em graus\n")
						escreva("2 - Calcular seno em radianos\n")
						escreva("3 - Sair\n")
						leia(opcao)
						limpa()
						escolha (opcao){
							caso 1 :
								escreva("informe o ângulo do seno em graus: ")
								leia(graus)
								escreva("Informe um limite de adendos no parâmetro entre 4 e 6: ")
								leia(adendos)
								limpa()
								se(adendos <= 6 e adendos >= 4){
									adendos = adendos
								} senao se(adendos > 6){
									escreva("Limite de adendos muito alto, será considerado como 6!\n")
									adendos = 6.0
								} senao {
									escreva("Limite de adendos muito baixo, será considerado como 4!\n")
									adendos = 4.0
								}
				
								se(graus == 180 ou graus == 360){
									seno = 0.0
								} senao se(graus == 90){
									seno = 1.0
								} senao se(graus == 270){
									seno = -1.0
								} senao {
									seno = calcularSeno(graus,adendos)
								}
								escreva("O seno de ", graus," graus é: ",seno,"\n")
								escreva("\nGotaria de realizar outra operação de seno? [S/N]")
								leia(opcao2)
								limpa()
								pare
							caso 2 :
								escreva("informe o ângulo do seno em radianos: ")
								leia(rad)
								escreva("Informe um limite de adendos no parâmetro entre 4 e 6: ")
								leia(adendos)
								limpa()
								se(adendos <= 6 e adendos >= 4){
									adendos = adendos
								} senao se(adendos > 6){
									escreva("Limite de adendos muito alto, será considerado como 6!\n")
									adendos = 6.0
								} senao {
									escreva("Limite de adendos muito baixo, será considerado como 4!\n")
									adendos = 4.0
								}
								graus = (rad * 180) / PI
								seno = calcularSeno(graus,adendos)
								escreva("O seno de ", rad," radianos é: ",seno,"\n")
								escreva("\nGotaria de realizar outra operação de seno? [S/N]")
								leia(opcao2)
								limpa()
								pare
							caso 3:
								escreva("Programa de calcular seno encerrado!")
								opcao2 = ""
								pare 
							caso contrario :
								escreva("Opção inválida, escolha uma das opções abaixo!\n\n")
								opcao2 = "S"
							}
					}enquanto(opcao2 == "S" ou opcao2 == "s")
					escreva("\nGostaria de realizar outra operação? [S/N]")
					leia(opcao2)
					limpa()
					pare
				caso 5:
					opcao2 = ""
					pare
				caso contrario:
					escreva("Opção inválida, escolha uma das opções abaixo!\n\n")
					opcao2 = "S"
			}
		}enquanto(opcao2 == "S" ou opcao2 == "s")
		escreva("Obrigado por usar MATEMÁGICA. Volte sempre!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1020; 
 * @DOBRAMENTO-CODIGO = [1, 14, 30];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */