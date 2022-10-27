RSpec.describe Granja do
  describe Funciones do
    before :all do
      @pollo0 = Ave.new("Pollo", 423, :hembra, 860.34, "corto", :anisodáctilas, :corredoras)
      @pollo1 = Ave.new("Pollo", 790, :hembra, 720.22, "corto", :anisodáctilas, :corredoras)
      @pollo2 = Ave.new("Pollo", 840, :hembra, 800.78, "corto", :anisodáctilas, :corredoras)
      @avicola0 = Avicola.new(1, "Granja el Pollito", :avicola, "Granja de producción de huevos", :pollos, :huevos, 3, 1.50, 2.00, [@pollo0, @pollo1, @pollo2])
      @avicola1 = Avicola.new(1, "Granja el Pollito", :avicola, "Granja de producción de huevos", :pollos, :huevos, 3, 1.50, 1.50, [@pollo0, @pollo1, @pollo2])
      @avicola2 = Avicola.new(1, "Granja el Pollito 2", :avicola, "Granja de producción de carne", :pollos, :sacrificio, 3, 1.50, 1.50, [@pollo0, @pollo1, @pollo2])
      @avicola3 = Avicola.new(1, "Granja el Pollito 3", :avicola, "Granja de producción de huevos", :pollos, :huevos, 3, 1.50, 2.50, [@pollo0, @pollo0, @pollo0])
      
      @cooperativa0 = [@avicola0, @avicola1]
      @cooperativa1 = [@avicola0, @avicola1, @avicola2]
    end
    
    context "Componentes del módulo Funcion" do
      it "Existe un módulo para almacenar las funcionalidades" do
        expect(Funciones).not_to eq(nil) 
      end    
      it "Existe una constante para representar las condiciones de vida (campo abierto, establo)" do
        expect(Funciones::CAMPO_ABIERTO).to eq("campo abierto")
        expect(Funciones::JAULAS).to eq("jaulas")               
      end    
      it "Existe un procedimiento para establecer los cuidados de los animales" do
        expect(Funciones.cuidados(3.45, @avicola0.lista_aves)).to eq(@avicola0.lista_aves.collect { |item| item + 3.45 })        
      end    
      it "Existe un procedimiento para establecer la reproducción de los animales" do
        expect(Funciones.reproduccion(730, @avicola0.lista_aves)).to eq([@pollo1, @pollo2])
      end    
    end

    context "Herencia del módulo Funcion" do
      it "Se espera que sea un objeto de la clase Module" do
        expect(Funciones).to be_a(Module) 
      end
      it "Se espera que sea un objeto (Object)" do
        expect(Funciones).to be_a(Object) 
      end
      it "Se espera que sea un objeto básico (BasicObject)" do
        expect(Funciones).to be_a(BasicObject) 
      end
      it "No se espera que sea una instancia de la clase que representa una cadena (String)" do
        expect(Funciones).not_to be_a(String) 
      end
      it "No se espera que sea una instancia de la clase que representa un número (Numeric)" do
        expect(Funciones).not_to be_a(Numeric) 
      end
    end

    context "Práctica 10" do
      it "1. Desarrolle una funcionalidad para calcular el bienestar animal dados una granja y unas condiciones de vida." do
        expect(Funciones.bienestar_animal(Funciones::CAMPO_ABIERTO, @avicola0)).to eq(63.89825392215307)
        expect(Funciones.bienestar_animal(Funciones::JAULAS, @avicola3)).to eq(50.0) 
      end
      it "2. Desarrolle una funcionalidad para calcular el beneficio neto de una granja" do
        expect(Funciones.beneficio_neto(@avicola0)).to eq(133.33333333333331)
        expect(Funciones.beneficio_neto(@avicola1)).to eq(100.0)
      end
      it "3. Desarrolle una funcionalidad para calcular el indicador de productividad dados una granja y sus condiciones de vida " do
        expect(Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, @avicola0)).to eq(1)
        expect(Funciones.indice_productividad(Funciones::JAULAS, @avicola1)).to eq(1)
      end
      it "4. Genere pruebas para calcular la granja con máximo indicador de productividad." do
        expect(@cooperativa0.find { |item|
          Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item) == @cooperativa0.collect {|item| Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item)}.max
      }.nombre).to eq("Granja el Pollito")
    
        expect(@cooperativa1.find { |item|
          Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item) == @cooperativa1.collect {|item| Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item)}.max
        }.nombre).to eq("Granja el Pollito")
      end
      it "5. Genere pruebas para incrementar el precio de venta de las granjas de una cooperativa de forma proporcional al de la granja con máximo indicador de productividad." do
        expect(@cooperativa0.collect { |item|
        if item.precio_venta < @cooperativa0.find { |item| Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item) == @cooperativa0.collect {|item| Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, item)}.max}.precio_venta
          Avicola.new(item.identificacion, item.nombre, item.tipo, item.descripcion, item.tipo_ave, item.destino, item.cantidad_de_aves, item.precio_compra, item.precio_venta + 2, item.lista_aves)
        else
          Avicola.new(item.identificacion, item.nombre, item.tipo, item.descripcion, item.tipo_ave, item.destino, item.cantidad_de_aves, item.precio_compra, item.precio_venta, item.lista_aves) 
        end       
      }.collect { |item|
        item.precio_venta
      }).to eq([2.0, 3.5])
      end
    end        
  end
end