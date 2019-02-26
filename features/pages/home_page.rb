class Home < SitePrism::Page

    set_url 'https://www.quintoandar.com.br/'

    element :input_localizacao, "input[name='LocationName']"
    element :btn_buscar, "#searchbutton"

    def estou_home_page?
        has_input_localizacao?
        has_btn_buscar?
    end

    def buscar_localizacao(regiao = "Paulista")
        input_localizacao.set regiao
        btn_buscar.click
    end

end