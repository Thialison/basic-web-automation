class BuscarImoveis < SitePrism::Page
    include RSpec::Matchers

    element :btn_filtrar, 'div.brin7c-0.fVOvvs > button:first-child'
    element :dormitorio_1, 'label[for="id-1-1"]'
    element :imovel_apartamento, 'label[for="id-2-1"]'
    element :vagas_1, 'label[for="id-3-2"]'
    element :mobiliado, 'label[for="id-4-2"]'
    element :perto_metro, 'label[for="id-5-2"]'
    element :sem_pets, 'label[for="id-6-3"]'
    element :btn_aplicar, '.wx7orw-1.dYrnDx > button > span:first-child'
    element :filtro_maps, '.s1jd21nz-0.bDyieI'

    def clica_filtrar
        btn_filtrar.click
    end

    def adiciona_filtros
        clica_filtrar
        dormitorio_1.click
        imovel_apartamento.click
        vagas_1.click
        mobiliado.click
        perto_metro.click
        sem_pets.click
        aplicar_filtro
    end

    def aplicar_filtro
        btn_aplicar.click
    end

    def filtros_adicionados?
        has_filtro_maps?
        should have_content('Mobiliado')
        should have_content('Metrô próx.')
        should have_content('1 dorms')
        should have_content('1 vagas')
        should have_content('Não aceita')
        should have_content('Apartamento')
    end

end