algoritmo "DecisaoCompra"

var
  saldo, ValorCompra : real

inicio
    escreva("Digite o seu saldo:")
    leia (saldo)
    escreva("Digite o valor da compra:")
    leia(ValorCompra)
    se (saldo >= ValorCompra) entao
        escreval("Pode comprar!")
    senao 
        escreval("Você não tem saldo suficiente!")
    fimse    
fimalgoritmo
