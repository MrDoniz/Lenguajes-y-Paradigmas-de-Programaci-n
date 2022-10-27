RSpec.describe Granja do
  describe Avicola do
    before :all do
      @pollo0 = Ave.new("Pollo", 423, :hembra, 860.34, "corto", :anisodáctilas, :corredoras)
      @pollo1 = Ave.new("Pollo", 790, :hembra, 720.22, "corto", :anisodáctilas, :corredoras)
      @pollo2 = Ave.new("Pollo", 840, :hembra, 800.78, "corto", :anisodáctilas, :corredoras)
      @pato0 = Ave.new("Pato", 423, :macho, 1060.34, "ancho y aplanado", :palmeadas, :nadadoras)
      @pato1 = Ave.new("Pato", 990, :hembra, 920.22, "ancho y aplanado", :palmeadas, :nadadoras)
      @pato2 = Ave.new("Pato", 840, :macho, 1000.78, "ancho y aplanado", :palmeadas, :nadadoras)
      @pavo0 = Ave.new("Pavo", 543, :hembra, 1860.34, "corto", :anisodáctilas, :corredoras)
      @pavo1 = Ave.new("Pavo", 423, :macho, 1720.22, "corto", :anisodáctilas, :corredoras)
      @pavo2 = Ave.new("Pavo", 840, :hembra, 1800.78, "corto", :anisodáctilas, :corredoras)
      
      @avicola0 = Avicola.new(1, "Granja el Pollo", :avicola, "Granja de producción de huevos", :pollos, :huevos, 3, 1.50, 2.00, [@pollo0, @pollo1, @pollo2])
      @avicola1 = Avicola.new(2, "Granja el Pato", :avicola, "Granja de producción de carne", :patos, :sacrificio, 3, 1.50, 2.00, [@pato0, @pato1, @pato2])
      @avicola2 = Avicola.new(3, "Granja el Pavo", :avicola, "Granja de producción de carne", :pavos, :sacrificio, 3, 1.50, 2.00, [@pavo0, @pavo1, @pavo2])

    end    
    context "Herencia de la clase Avícola" do
      it "Se espera que una instancia de la clase Avícola sea una granja Avicola" do
        expect(@avicola0).to be_a(Avicola)
        expect(@avicola1).to be_a(Avicola)
        expect(@avicola2).to be_a(Avicola)
      end
      it "Se espera que una instancia de la clase Avícola sea un Dato" do
        expect(@avicola0).to be_a(Datos)
        expect(@avicola1).to be_a(Datos)
        expect(@avicola2).to be_a(Datos)
      end
      it "Se espera que una instancia de la clase Avícola sea un Object" do
        expect(@avicola0).to be_a(Object)
        expect(@avicola1).to be_a(Object)
        expect(@avicola2).to be_a(Object)
      end
      it "Se espera que una instancia de la clase Avícola sea un Basic Object" do
        expect(@avicola0).to be_a(BasicObject)
        expect(@avicola1).to be_a(BasicObject)
        expect(@avicola2).to be_a(BasicObject)
      end
      it "Se espera que una instancia de la clase Avícola sea Enumerable" do
        expect(@avicola0).to be_a(Enumerable)
        expect(@avicola1).to be_a(Enumerable)
        expect(@avicola2).to be_a(Enumerable)        
      end
      it "Se espera que una instancia de la clase Avícola sea Funciones" do
        expect(@avicola0).to be_a(Funciones)
        expect(@avicola1).to be_a(Funciones)
        expect(@avicola2).to be_a(Funciones)
      end
      it "No se espera que una instancia de la clase Avícola sea un Animal" do
        expect(@avicola0).not_to be_a(Animal)
        expect(@avicola1).not_to be_a(Animal)
        expect(@avicola2).not_to be_a(Animal)
      end
      it "No se espera que una instancia de la clase Avícola sea un Ave" do
        expect(@avicola0).not_to be_a(Ave)
        expect(@avicola1).not_to be_a(Ave)
        expect(@avicola2).not_to be_a(Ave)
      end      
    end
    context "Atributos de la clase Avicola" do
      it "Tiene una clase para almacenar los datos de la granja" do
        expect(@avicola0).not_to eq(nil) 
      end
      it "Tiene un atributo para el tipo de ave (gansos, pollos, patos, pavos)" do
        expect(@avicola0.tipo_ave).to eq(:pollos)
        expect(@avicola1.tipo_ave).to eq(:patos)
        expect(@avicola2.tipo_ave).to eq(:pavos) 
      end
      it "Tiene un atributo para el destino de los animales (huevos, sacrificio)" do
        expect(@avicola0.destino).to eq(:huevos)
        expect(@avicola1.destino).to eq(:sacrificio)
        expect(@avicola2.destino).to eq(:sacrificio)        
      end
      it "Tiene un atributo para el número de aves de la granja" do
        expect(@avicola0.cantidad_de_aves).to eq(3)
        expect(@avicola1.cantidad_de_aves).to eq(3)
        expect(@avicola2.cantidad_de_aves).to eq(3) 
      end
      it "Tiene un atributo para el precio unitario de los animales" do
        expect(@avicola0.precio_compra).to eq(1.50)
        expect(@avicola1.precio_compra).to eq(1.50)
        expect(@avicola2.precio_compra).to eq(1.50) 
      end
      it "Tiene un atributo para el precio de venta unitario de los animales" do
        expect(@avicola0.precio_venta).to eq(2.00)
        expect(@avicola1.precio_venta).to eq(2.00)
        expect(@avicola2.precio_venta).to eq(2.00) 
      end 
      it "Tiene un atributo para almacenar las aves de la granja" do
        expect(@avicola0.lista_aves).to eq([@pollo0, @pollo1, @pollo2])
        expect(@avicola1.lista_aves).to eq([@pato0, @pato1, @pato2])
        expect(@avicola2.lista_aves).to eq([@pavo0, @pavo1, @pavo2]) 
      end
      it "Se obtiene una cadena con la información de la granja avícola correctamente formateada" do
        expect(@avicola0.to_s).to eq("Identificacion: 1\nNombre: Granja el Pollo\nTipo: avicola\nDescripcion: Granja de producción de huevos\nTipo de ave: pollos\nDestino: huevos\nCantidad de animales: 3\nPrecio unitario de compra: 1.5\nPrecio unitario de venta: 2.0\nAnimales: #{[@pollo0, @pollo1, @pollo2]}")
        expect(@avicola1.to_s).to eq("Identificacion: 2\nNombre: Granja el Pato\nTipo: avicola\nDescripcion: Granja de producción de carne\nTipo de ave: patos\nDestino: sacrificio\nCantidad de animales: 3\nPrecio unitario de compra: 1.5\nPrecio unitario de venta: 2.0\nAnimales: #{[@pato0, @pato1, @pato2]}")
        expect(@avicola2.to_s).to eq("Identificacion: 3\nNombre: Granja el Pavo\nTipo: avicola\nDescripcion: Granja de producción de carne\nTipo de ave: pavos\nDestino: sacrificio\nCantidad de animales: 3\nPrecio unitario de compra: 1.5\nPrecio unitario de venta: 2.0\nAnimales: #{[@pavo0, @pavo1, @pavo2]}")
      end          
    end
    
    context "Expectativas de Enumerable" do
      it "Todos los atributos de la clase que se pueden enumerar son Numeric" do
        expect(@avicola0.all?(Numeric)).to eq(true)
        expect(@avicola1.all?(Numeric)).to eq(true)
        expect(@avicola2.all?(Numeric)).to eq(true) 
      end
      it "Hay atributos de la clase que se pueden enumerar que son Integer" do
        expect(@avicola0.any?(Integer)).to eq(true)
        expect(@avicola1.any?(Integer)).to eq(true)
        expect(@avicola2.any?(Integer)).to eq(true) 
      end
      it "Hay atributos de la clase que se pueden enumerar que son Float" do
        expect(@avicola0.any?(Float)).to eq(true)
        expect(@avicola1.any?(Float)).to eq(true)
        expect(@avicola2.any?(Float)).to eq(true) 
      end        
      it "Se cuenta que elementos enumerables que se tiene" do
        expect(@avicola0.count).to eq(3)
        expect(@avicola1.count).to eq(3)
        expect(@avicola2.count).to eq(3)
      end
      it "Es posible realizar el método collect Enumerable" do
        expect(@avicola0.collect { |item| item + 2 }).to eq([5, 3.5, 4.0])
        expect(@avicola1.collect { |item| item * 2 }).to eq([6, 3.0, 4.0])
        expect(@avicola2.collect { |item| item - 2 }).to eq([1, -0.5, 0.0])
      end
      it "Es posible realizar el método filter de Enumerable" do
        expect(@avicola0.filter { |item| item == 3}).to eq([3])
        expect(@avicola1.filter { |item| item == 1.5}).to eq([1.5])
        expect(@avicola2.filter { |item| item == 2.0}).to eq([2.0])
      end
      it "Es posible realizar el método sort de Enumerable" do
        expect(@avicola0.sort { |a, b| a <=> b}).to eq([1.5, 2.0, 3])
        expect(@avicola1.sort { |a, b| a <=> b}).to eq([1.5, 2.0, 3])
        expect(@avicola2.sort { |a, b| a <=> b}).to eq([1.5, 2.0, 3])
      end
      it "Es posible realizar el método take de Enumerable" do
        expect(@avicola0.take(1)).to eq([3])
        expect(@avicola1.take(2)).to eq([3, 1.5])
        expect(@avicola2.take(3)).to eq([3, 1.5, 2.0])
      end
    end

    context "Expectativas sobre las condiciones de vida" do
      it "Se espera que se tenga un sistema de gestión de las condiciones de vida" do
        expect(Avicola::JAULAS).to eq("jaulas")
        expect(Avicola::CAMPO_ABIERTO).to eq("campo abierto")
        expect(@avicola0.get_campo_abierto).to eq("campo abierto")
        expect(@avicola0.get_jaula).to eq("jaulas")    
      end
    end
    
    context "Expectativas sobre los cuidados de los animales" do
      it "Se espera que se tenga un sistema de cuidados de los animales" do
        expect(@avicola0.cuidados(3.45)).to eq(@avicola0.lista_aves.collect { |item| item + 3.45 })
        expect(@avicola1.cuidados(6.76)).to eq(@avicola1.lista_aves.collect { |item| item + 6.76 })
        expect(@avicola2.cuidados(7.95)).to eq(@avicola2.lista_aves.collect { |item| item + 7.95 })        
      end    
    end
    
    context "Expectativas sobre la reproducción de los animales" do
      it "Se espera que se tenga un sistema de selección de animales para reproducción" do
        expect(@avicola0.reproduccion(730)).to eq([@pollo1, @pollo2])
        expect(@avicola1.reproduccion(730)).to eq([@pato1, @pato2])
        expect(@avicola2.reproduccion(730)).to eq([@pavo2])  
      end    
    end
  end
end