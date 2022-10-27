RSpec.describe Granja do
  describe Granja::DSLFuncionalidad do
    before :all do
      @pollo0 = Ave.new("Pollo", 423, :hembra, 860.34, "corto", :anisodáctilas, :corredoras)
      @pollo1 = Ave.new("Pollo", 790, :hembra, 720.22, "corto", :anisodáctilas, :corredoras)
      @pollo2 = Ave.new("Pollo", 840, :hembra, 800.78, "corto", :anisodáctilas, :corredoras)
      granja0 = Avicola.new(1, "Granja el Pollo", :avicola, "Granja de producción de huevos", :pollos, :huevos, 3, 1.50, 2.00, [@pollo0, @pollo1, @pollo2])
      
      @funcionalidad = Granja::DSLFuncionalidad.new(12345678) do
        beneficio granja0
        bienestar granja0, :condiciones => :campo
        productividad granja0, :condiciones => :campo                
      end        
    end
    context "Atributos de la clase DSLFuncionalidad" do
      it "Tiene una clase para almacenar las funcionalidades de la granja" do
        expect(@funcionalidad).not_to eq(nil)
      end
      it "Tiene un método para calcular el beneficio de una granja" do
        expect(@funcionalidad).to respond_to(:beneficio)
        expect(@funcionalidad.respond_to?(:beneficio)).to eq(true)
      end
      it "Tiene un método para calcular el bienestar de una granja" do
        expect(@funcionalidad).to respond_to(:bienestar)
        expect(@funcionalidad.respond_to?(:bienestar)).to eq(true)
      end
      it "Tiene un método para calcular la productividad de una granja" do
        expect(@funcionalidad).to respond_to(:productividad)
        expect(@funcionalidad.respond_to?(:productividad)).to eq(true)
      end
      it "Se obtiene una cadena con la información de las funcionalidades correctamente formateada" do
        expect(@funcionalidad.to_s).to eq("Granja: 12345678\nBeneficio: 133.33333333333331\nBienestar: 63.89825392215307\nProductividad: 1")
      end
    end
  end
end  