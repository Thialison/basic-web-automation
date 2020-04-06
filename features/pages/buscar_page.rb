class BuscarImoveis < SitePrism::Page
    include RSpec::Matchers

    element :dormitorio_1, 'label[for="id-1-1"]'
    element :imovel_apartamento, 'label[for="id-2-1"]'
    element :vagas_1, 'label[for="id-3-2"]'
    element :mobiliado, 'label[for="id-4-2"]'
    element :perto_metro, 'label[for="id-5-2"]'
    element :sem_pets, 'label[for="id-6-3"]'
    element :btn_aplicar, '.wx7orw-1.dYrnDx > button > span:first-child'
    element :filtro_maps, '.s1jd21nz-0.bDyieI'

    def adiciona_filtros
        click_button('Filtrar')
        dormitorio_1.click
        imovel_apartamento.click
        vagas_1.click
        mobiliado.click
        perto_metro.click
        sem_pets.click
        aplicar_filtro
    end

    def aplicar_filtro
        click_button('APLICAR')
    end

    def filtros_adicionados?
        has_filtro_maps?
    end

end