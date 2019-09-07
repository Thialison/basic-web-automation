# language: pt

Funcionalidade: Buscar Imóvel

  Eu como usuário do 5th andar
  Quero realizar uma busca
  Para consultar os imovéis disponíveis

  Cenário: Realizar busca de apartamento com filtros
    Dado que estou no site do Quinto Andar
    Quando realizar uma busca em São Paulo
    E adicionar filtros especificos
    Então devo ver o resultado da busca com os filtros aplicados corretamente