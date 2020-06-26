# frozen_string_literal: true

class BuscarImoveis < SitePrism::Page
  include RSpec::Matchers

  elements :dormitorios, "button[name='bedrooms']"
  elements :banheiros, "button[name='bathrooms']"
  element :perto_metro, "button[name='nearSubway'][value='yes']"
  element :btn_aplicar, "button[data-testid='apply-filters-btn']"
  element :filtro_maps, '.sc-1jd21nz-0.ehvQbS'

  def adiciona_filtros
    click_button('Filtrar')
    dormitorios[1].click
    banheiros[0].click
    perto_metro.click
    aplicar_filtro
  end

  def aplicar_filtro
    btn_aplicar.click
  end

  def filtros_adicionados?
    expect(has_filtro_maps?).to be true
  end
end
