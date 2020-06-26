# frozen_string_literal: true

class Home < SitePrism::Page
  set_url 'https://www.quintoandar.com.br/'

  element :input_localizacao, "input[name='LocationName']"
  element :input_cidade, "input[aria-labelledby='city-input']"
  element :btn_buscar, "button[data-testid='landing-search-button']"
  element :home_page, "div[data-testid='featured-filter-form']"

  def estou_home_page?
    home_page.visible?
    sleep 2
  end

  def buscar_cidade(cidade = 'São Paulo')
    input_cidade.set cidade
    btn_buscar.click
  end
end
