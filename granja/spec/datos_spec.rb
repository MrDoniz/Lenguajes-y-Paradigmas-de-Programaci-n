RSpec.describe Granja do
  describe Datos do
    # Crea los objetos de la clase Datos con los que se va a trabajar.
    before :all do
      @datos0 = Datos.new(1, "Granja el Pollo", :avicola, "Granja de producción de huevos")
      @datos1 = Datos.new(2, "Granja el Pato", :avicola, "Granja de producción de carne")
      @datos2 = Datos.new(3, "Granja el Pavo", :avicola, "Granja de producción de carne")
    end    
    context "Atributos de la clase Datos" do
      # Instancia del objeto.
      it "Se puede instanciar un objeto Datos" do
        expect(@datos0).not_to eq (nil)
      end  
      # Test de la información de la identificacion de una Granja.
      it "Se debe poder acceder al atributo identificacion de la clase Datos" do
        expect(@datos0.identificacion).to eq(1)
        expect(@datos1.identificacion).to eq(2)
        expect(@datos2.identificacion).to eq(3)      
      end
      # Test de la información del nombre de una Granja.
      it "Se debe poder acceder al atributo nombre de la clase Datos" do
        expect(@datos0.nombre).to eq("Granja el Pollo")
        expect(@datos1.nombre).to eq("Granja el Pato")
        expect(@datos2.nombre).to eq("Granja el Pavo")      
      end
      # Test de la información del tipo de una Granja.
      it "Se debe poder acceder al atributo tipo de la clase Datos" do
        expect(@datos0.tipo).to eq(:avicola)
        expect(@datos1.tipo).to eq(:avicola)
        expect(@datos2.tipo).to eq(:avicola)      
      end
      # Test de la información de la descripción de una Granja.
      it "Se debe poder acceder al atributo descripcion de la clase Datos" do
        expect(@datos0.descripcion).to eq("Granja de producción de huevos")
        expect(@datos1.descripcion).to eq("Granja de producción de carne")
        expect(@datos2.descripcion).to eq("Granja de producción de carne")      
      end    
      # Test de la información de los datos de una Granja.
      it "Se puede mostrar la información de la clase Datos" do
        expect(@datos0.to_s).to eq("Identificacion: 1\nNombre: Granja el Pollo\nTipo: avicola\nDescripcion: Granja de producción de huevos")
        expect(@datos1.to_s).to eq("Identificacion: 2\nNombre: Granja el Pato\nTipo: avicola\nDescripcion: Granja de producción de carne")
        expect(@datos2.to_s).to eq("Identificacion: 3\nNombre: Granja el Pavo\nTipo: avicola\nDescripcion: Granja de producción de carne")
      end
    end
    
    context "Herencia de la clase Datos" do
      it "Se espera que una instancia de la clase Datos sea un Datos" do
        expect(@datos0).to be_a(Datos)
        expect(@datos1).to be_a(Datos)
        expect(@datos2).to be_a(Datos)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto (Object)" do
        expect(@datos0).to be_a(Object)
        expect(@datos1).to be_a(Object)
        expect(@datos2).to be_a(Object)
      end
      it "Se espera que una instancia de la clase Datos sea un objeto básico (BasicObject)" do
        expect(@datos0).to be_a(BasicObject)
        expect(@datos1).to be_a(BasicObject)
        expect(@datos2).to be_a(BasicObject)
      end
      it "No se espera que una instancia de la clase Datos sea una cadena (String)" do
        expect(@datos0).not_to be_a(String)
        expect(@datos1).not_to be_a(String)
        expect(@datos2).not_to be_a(String)
      end
      it "No se espera que una instancia de la clase Datos sea un número (Numeric)" do
        expect(@datos0).not_to be_a(Numeric)
        expect(@datos1).not_to be_a(Numeric)
        expect(@datos2).not_to be_a(Numeric)
      end      
    end       
  end
end