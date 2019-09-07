Dado("que estou no site do Quinto Andar") do
  home.load
  home.estou_home_page?
end

Quando("realizar uma busca em São Paulo") do
  home.buscar_localizacao
end

Quando("adicionar filtros especificos") do
  buscar.adiciona_filtros
end

Então("devo ver o resultado da busca com os filtros aplicados corretamente") do
  buscar.filtros_adicionados?
end

