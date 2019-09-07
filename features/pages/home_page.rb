class Home < SitePrism::Page

    set_url 'https://www.quintoandar.com.br/'

    element :input_localizacao, "input[name='LocationName']"
    element :input_cidade, 'form > div > div:first-child >* input'
    element :btn_buscar, 'form > div >* button'

    def estou_home_page?
    end

    def buscar_localizacao(cidade = "São Paulo")
        input_cidade.set cidade
        btn_buscar.click
    end

end