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

## Repetição

Esse foi o exercício mais difícil até agora pra mim. Fiquei 4 dias
reassistindo aula e refazendo as atividades até conseguir fazer sozinho.

### Onde o contador muda

Não existe uma regra fixa. Depende do que a variável significa, e o
valor inicial tem que combinar com a posição.

- "Estou na volta número N" → começa em 1, muda no FIM do corpo.
- "Já processei N até agora" → começa em 0, muda logo DEPOIS de processar.

No boletim eu usei o primeiro significado com a posição do segundo:
comecei `cont` em 1 e incrementei na primeira linha. Resultado: dentro
do laço `cont` já valia 2, e o `se (cont = 1)` nunca foi verdadeiro
em volta nenhuma. O bloco que inicializava maior e menor nunca rodou.

Sintoma para reconhecer: o maior funcionava e o menor não. Não eram
dois bugs. As duas variáveis ficaram em 0, e 0 favorece o maior
(7 > 0 é verdade) e sabota o menor (7 < 0 é falso, sempre).

Lição maior: reaproveitei um padrão que tinha funcionado no exercício
de despesas sem conferir se as premissas continuavam valendo. Lá a
variável começava em 0. Aqui em 1. O padrão era o mesmo, o contexto não.

### Laço infinito

Se nada dentro do corpo move a condição na direção de ficar falsa, o
laço não termina. O programa não dá erro — ele só não acaba.
Aconteceu quando digitei 0 em "quanto guarda por mês": o acumulado
nunca crescia e nunca alcançava a meta.

Antes de escrever um laço: o que garante que essa condição vai virar
falsa algum dia?

### Quando usar `para`

Quando eu sei quantas voltas vou dar. O `para` junta início, condição
e avanço na mesma linha, e o avanço acontece no fim por construção —
não tem onde errar porque não tem o que decidir. No Java isso vira
`for (int i = 1; i <= n; i++)`, com o `i++` no terceiro pedaço, que
roda no fim de cada volta. A regra está gravada na sintaxe.

## Condicionais

### `senao` não é para tudo

`senao` é para caminhos que se EXCLUEM. Usei `senao` para separar
"atinge a meta em N meses" de "passou X da meta" — mas as duas coisas
acontecem juntas, não são alternativas. O programa imprimia só uma.

E o contrário também existe: quando a alternativa é silêncio, `se`
sozinho basta, sem `senao`. Só imprimo a sobra quando existe sobra.

Pergunta que resolve: isso são dois caminhos, ou duas coisas em sequência?

## Como eu acho bug

Ler o código procurando erro quase nunca funciona, porque eu leio o
que quis escrever. Duas ferramentas que funcionam:

1. **Teste de mesa** — executar na mão, linha por linha, anotando o
   valor de cada variável. Duas voltas bastam. Se o bug não aparece em
   duas, quase nunca é do laço.
2. **Depurar por impressão** — `escreval(">>> cont vale: ", cont)`
   antes da linha suspeita. Quando o programa faz algo que eu não
   explico, peço para ele mostrar o que está vendo em vez de adivinhar.

Também: rodar é parte de escrever, não a etapa depois. Mandei código
para revisão que nem compilava.
