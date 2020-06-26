Dado("que estou no site do Quinto Andar") do
  visit 'https://www.quintoandar.com.br/'
  home.estou_home_page?
end

Quando("realizar uma busca em São Paulo") do
  home.buscar_cidade
end

Quando("adicionar filtros especificos") do
  buscar.adiciona_filtros
end

Então("devo ver o resultado da busca com os filtros aplicados corretamente") do
  buscar.filtros_adicionados?
end

