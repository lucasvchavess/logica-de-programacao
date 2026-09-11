algoritmo "Analise de Compras"

var
  saldo, compra, caixinha, saldoFinal, porcentagem, diferencaAbsoluta: real
  compraCabe, sobraReserva, podeComprar, situacaoAtencao: logico
inicio
  escreval("Qual o seu saldo na conta? ")
  leia (saldo)
  escreval("Seu saldo é :", saldo:0:2 )

  escreval("Qual o valor do produto que você quer comprar?")
  leia (compra)
  escreval ("O seu produto custa :", compra:0:2)

  escreval("Quanto você quer guardar na caixinha?")
  leia (caixinha)
  escreval ("Você irá guardar ", caixinha:0:2, " na caixinha")

  saldoFinal <- (saldo - compra)
  escreval("O seu saldo final é de: ", saldoFinal:0:2)

  porcentagem <- (compra / saldo) * 100
  escreval("A compra representa: ", porcentagem , "% do saldo.")

  diferencaAbsoluta <- abs(compra - saldo)
  escreval("Diferença entre compra e saldo: ", diferencaAbsoluta:0:2)

  compraCabe <- compra <= saldo
  escreval("A compra cabe no bolso: " , compraCabe)

  sobraReserva <- saldoFinal >= caixinha 
  escreval("Sobra a reserva mínima: ", sobraReserva)

  podeComprar <- compraCabe e sobraReserva 
  escreval("Pode comprar tranquilo: ", podeComprar)

  situacaoAtencao <- compraCabe e nao sobraReserva
  escreval("Situação de atenção: ", situacaoAtencao)
fimalgoritmo
