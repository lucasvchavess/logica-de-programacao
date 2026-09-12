# Notas — Algoritmos e Lógica

## Limitação conhecida do 01-posso-comprar
(o que acontece quando o saldo é zero, e quando você pretende corrigir)

## Precedência de operadores
A resposta é: media <- (a + b + c) / 3 isso porque precisamos calcular primeiro a soma e depois dividir por 3. Se não tivesse os parênteses seria calculado primeiro a divisão e depois a adição.

## Exclusão mútua entre podeComprar e situacaoAtencao
Não é possível que podeComprar e situacaoAtencao sejam verdadeiros ao mesmo tempo porque suas condições são opostas. podeComprar verifica se a compra cabe no orçamento e se ainda sobra dinheiro suficiente na caixinha. Já situacaoAtencao verifica justamente a situação em que a compra não deixa a reserva necessária. Por isso, quando uma condição é verdadeira, a outra necessariamente será falsa.