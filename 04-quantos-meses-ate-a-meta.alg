algoritmo "04-Quantos-meses-ate-a-meta"

var
  meta, guardado, porMes, excedente: real
  meses: inteiro

inicio

  escreval("Qual a sua meta? ")
  leia(meta)

  escreval("Quanto voce ja tem guardado? ")
  leia(guardado)

  escreval("Quanto consegue guardar por mes? ")
  leia(porMes)

  meses <- 0

  enquanto (guardado < meta) faca
    meses <- meses + 1
    guardado <- guardado + porMes
    escreval("Mes ", meses, ": R$ ", guardado)
  fimenquanto

  excedente <- guardado - meta

  escreval()
  escreval("Voce atinge a meta em ", meses, " meses.")
  escreval("Vai passar da meta em R$ ", excedente)

fimalgoritmo