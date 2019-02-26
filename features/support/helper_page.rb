Dir["../pages/*.rb"].each {|file| require file }

module Pages
    def home
        @home ||= Home.new
    end
    
    def buscar
        @buscar ||= BuscarImoveis.new
    end
end