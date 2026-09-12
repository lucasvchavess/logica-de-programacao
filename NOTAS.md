# Notas — Algoritmos e Lógica

## Limitação conhecida do 01-posso-comprar
(o que acontece quando o saldo é zero, e quando você pretende corrigir)

## Precedência de operadores
A resposta é: media <- (a + b + c) / 3 isso porque precisamos calcular primeiro a soma e depois dividir por 3. Se não tivesse os parênteses seria calculado primeiro a divisão e depois a adição.

## Exclusão mútua entre podeComprar e situacaoAtencao
Não é possível que podeComprar e situacaoAtencao sejam verdadeiros ao mesmo tempo porque suas condições são opostas. podeComprar verifica se a compra cabe no orçamento e se ainda sobra dinheiro suficiente na caixinha. Já situacaoAtencao verifica justamente a situação em que a compra não deixa a reserva necessária. Por isso, quando uma condição é verdadeira, a outra necessariamente será falsa.

## Condicionais Algoritmo - Parte 1

Faixas com variável "real" não podem usar limites de inteiros.
Hoje eu escrevi um exercício de despesas e coloquei "<= 50 e depois >= 51: E então tudo entre 50 e 51 não aparecia, o computador não imprimia. Não dava nenhum erro o computador só ficava mudo.

Sintomas para reconhecer: O programa roda normalmente, não dá erro, e não responde certos valores. Suspeitar de buraco entre faixas.

No meu primeiro algoritmo antes da analise, eu utilizei vários "se" soltos que não garantem que as faixas se encaixem, quem garante sou eu na mão e foi ai que eu falhei, mas depois que mandei para análise aprendi que eu poderia usar um "se"e "senão"e criar outro "se e "senão" dentro dele, assim eu definiria 2 condicionais e tudo o que fosse diferente das 2 condições teria outro resultado.

Fiz a indentação errada, no VisuAlg não muda a execução, mas é um erro simples que pode causar um bug depois, e até mesmo para encontrar visualmente será dificil.

Despesa negativa hoje no programa é uma despesa baixa, decidi que vou deixar assim por enquanto e depois eu ajusto.

## Condicionais Algoritmo - Parte 2

CamelCase - Aprender a utilizar e já forçar escrever dessa forma mesmo que no VisuAlg, não faça diferença, por quando eu começar a usar Java ou otra linguagem a forma da escrita vai influenciar já que uma palavra que começa um uma letra Maiúscula significa uma classe, e uma que começa com letra minúscula significa uma variável.