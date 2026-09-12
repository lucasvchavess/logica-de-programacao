algoritmo "ClassificacaoDespesas"

var
  despesa : real

inicio
  escreva("Digite o valor da sua despesa: ")
  leia (despesa)
  se (despesa <= 50) entao
    escreval("Sua despesa é baixa!")
  senao
    se (despesa < 100) entao
      escreval("Sua despesa é média!")
    senao
    escreval("Sua despesa é alta!")
    fimse
  fimse
fimalgoritmo
