RSpec.describe Granja do
  describe Animal do
    # Crea los objetos de la clase Datos con los que se va a trabajar.
    before :all do
      @animal0 = Animal.new(1245, 423, :hembra, 860.34)
      @animal1 = Animal.new(423, 140, :macho, 720.22)
      @animal2 = Animal.new(895, 543, :macho, 800.78)
    end
    context "Atributos de la clase Animal" do
      # Instancia de la clase Animal
      it "Se puede instanciar un objeto Animal" do
        expect(@animal0).not_to eq(nil)      
      end     
      it "Se debe poder acceder al identificador del animal" do
        expect(@animal0.identificacion).to eq(1245)
        expect(@animal1.identificacion).to eq(423)
        expect(@animal2.identificacion).to eq(895)
      end
      it "Se debe poder acceder a la edad del animal" do
        expect(@animal0.edad).to eq(423)
        expect(@animal1.edad).to eq(140)
        expect(@animal2.edad).to eq(543)
      end
      it "Se debe poder acceder al sexo del animal" do
        expect(@animal0.sexo).to eq(:hembra)
        expect(@animal1.sexo).to eq(:macho)
        expect(@animal2.sexo).to eq(:macho)
      end    
      it "Se debe poder acceder al peso del animal" do
        expect(@animal0.peso).to eq(860.34)
        expect(@animal1.peso).to eq(720.22)
        expect(@animal2.peso).to eq(800.78)
      end
      it "Prueba del metodo to_s de la clase Animal" do
        expect(@animal0.to_s).to eq("Identificacion: 1245\nEdad: 423\nSexo: hembra\nPeso: 860.34")
        expect(@animal1.to_s).to eq("Identificacion: 423\nEdad: 140\nSexo: macho\nPeso: 720.22")
        expect(@animal2.to_s).to eq("Identificacion: 895\nEdad: 543\nSexo: macho\nPeso: 800.78")
      end
    end
  
    context "Herencia de la clase Animal" do
      it "Se espera que una instancia de la clase Animal sea un Animal" do
        expect(@animal0).to be_a(Animal)
        expect(@animal1).to be_a(Animal)
        expect(@animal2).to be_a(Animal)
      end
      it "Se espera que una instancia de la clase Animal sea un objeto (Object)" do
        expect(@animal0).to be_a(Object)
        expect(@animal1).to be_a(Object)
        expect(@animal2).to be_a(Object)
      end
      it "Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)" do
        expect(@animal0).to be_a(BasicObject)
        expect(@animal1).to be_a(BasicObject)
        expect(@animal2).to be_a(BasicObject)
      end 
      it "Se espera que una instancia de la clase Animal sea un objeto Comparable" do
        expect(@animal0).to be_a(Comparable)
        expect(@animal1).to be_a(Comparable)
        expect(@animal2).to be_a(Comparable)
      end
      it "No se espera que una instancia de la clase Animal sea una cadena (string)" do
        expect(@animal0).not_to be_a(String)
        expect(@animal1).not_to be_a(String)
        expect(@animal2).not_to be_a(String)
      end
      it "No se espera que una instancia de la clase Animal sea una número (Numeric)" do
        expect(@animal0).not_to be_a(Numeric)
        expect(@animal1).not_to be_a(Numeric)
        expect(@animal2).not_to be_a(Numeric)
      end        
    end  
    context "Problema 2." do
      it "Se ha de contar el número de objetos que se instancia de la clase Animal" do
        # Cuenta el número de objetos que se instancian de la clase Animal
        expect(Animal.total_animal).to eq(6)
      end  
    end  
    context "Problema 3." do
      it "Los animales deben ser comparables por su peso" do
        # Se espera que los animales sean comparables por su peso
        expect(@animal0 > @animal1).to eq(true)
        expect(@animal1 >= @animal0).to eq(false)
        expect(@animal0 == @animal0).to eq(true)
        expect(@animal0 < @animal2).to eq(false)
        expect(@animal0 <= @animal2).to eq(false)
        expect(@animal0.between?(@animal0,@animal1)).to eq(false)
      end      
    end    
  end
end  