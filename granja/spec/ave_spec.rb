RSpec.describe Granja do
  describe Ave do
    # Crea los objetos de la clase Datos con los que se va a trabajar.
    before :all do
      @ave0 = Ave.new(1245, 423, :hembra, 860.34, :corto, :anisodáctilas, :corredoras)
      @ave1 = Ave.new(423, 140, :macho, 720.22, :ancho_y_aplanado, :palmeadas, :nadadoras)
      @ave2 = Ave.new(895, 543, :macho, 800.78, :corto, :anisodáctilas, :corredoras)
    end    
    context "Atributos de la clase Ave" do
      # Instancia de la clase Animal
      it "Se puede instanciar un objeto Ave" do
        expect(@ave0).not_to eq(nil)
      end      
      it "Se debe poder acceder al tipo de pico del ave" do
        expect(@ave0.pico).to eq(:corto)
        expect(@ave1.pico).to eq(:ancho_y_aplanado)
        expect(@ave2.pico).to eq(:corto)
      end
      it "Se debe poder acceder al tipo de patas del ave" do
        expect(@ave0.pata).to eq(:anisodáctilas)
        expect(@ave1.pata).to eq(:palmeadas)
        expect(@ave2.pata).to eq(:anisodáctilas)
      end
      it "Se debe poder acceder al tipo de movilidad del ave" do
        expect(@ave0.movilidad).to eq(:corredoras)
        expect(@ave1.movilidad).to eq(:nadadoras)
        expect(@ave2.movilidad).to eq(:corredoras)
      end            
      it "Prueba del metodo to_s de la clase Ave" do
        expect(@ave0.to_s).to eq("Identificacion: 1245\nEdad: 423\nSexo: hembra\nPeso: 860.34\nTipo de pico: corto\nTipo de pata: anisodáctilas\nTipo de movilidad: corredoras")
        expect(@ave1.to_s).to eq("Identificacion: 423\nEdad: 140\nSexo: macho\nPeso: 720.22\nTipo de pico: ancho_y_aplanado\nTipo de pata: palmeadas\nTipo de movilidad: nadadoras")
        expect(@ave2.to_s).to eq("Identificacion: 895\nEdad: 543\nSexo: macho\nPeso: 800.78\nTipo de pico: corto\nTipo de pata: anisodáctilas\nTipo de movilidad: corredoras")
      end
    end

    context "Herencia de la clase Ave" do
      it "Se espera que una instancia de la clase Ave sea un Ave" do
        expect(@ave0).to be_a(Ave)
        expect(@ave1).to be_a(Ave)
        expect(@ave2).to be_a(Ave)
      end
      it "Se espera que una instancia de la clase Ave sea un Animal" do
        expect(@ave0).to be_a(Animal)
        expect(@ave1).to be_a(Animal)
        expect(@ave2).to be_a(Animal)
      end
      it "Se espera que una instancia de la clase Ave sea un Objeto (Object)" do
        expect(@ave0).to be_a(Object)
        expect(@ave1).to be_a(Object)
        expect(@ave2).to be_a(Object)
      end
      it "Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)" do
        expect(@ave0).to be_a(BasicObject)
        expect(@ave1).to be_a(BasicObject)
        expect(@ave2).to be_a(BasicObject)
      end
      it "Se espera que una instancia de la clase Ave sea un objeto Comparable" do
        expect(@ave0).to be_a(Comparable)
        expect(@ave1).to be_a(Comparable)
        expect(@ave2).to be_a(Comparable)
      end
      it "No se espera que una instancia de la clase Ave sea una cadena (String)" do
        expect(@ave0).not_to be_a(String)
        expect(@ave1).not_to be_a(String)
        expect(@ave2).not_to be_a(String)
      end
      it "No se espera que una instancia de la clase Ave sea un número (Numeric)" do
        expect(@ave0).not_to be_a(Numeric)
        expect(@ave1).not_to be_a(Numeric)
        expect(@ave2).not_to be_a(Numeric)
      end
    end
  
    context "Problema 3." do
      it "Las aves deben ser comparables por su edad" do
        expect(@ave0 > @ave1).to eq(true)
        expect(@ave1 >= @ave0).to eq(false)
        expect(@ave0 == @ave0).to eq(true)
        expect(@ave0 < @ave2).to eq(true)
        expect(@ave0 <= @ave2).to eq(true)
        expect(@ave0.between?(@ave0,@ave1)).to eq(false)
      end
    end
  end
end