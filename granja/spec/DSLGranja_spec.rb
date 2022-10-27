RSpec.describe Granja do
  describe Granja::DSLGranja do
    before :all do
      @granja0 = Granja::DSLGranja.new(12345678) do
        datos     "Pollos muertos",
                  :descripcion => "PyME - Pequeña y mediana empresa",
                  :tipo => :pollos
        ejemplar  "12345678-00000001",
                  :edad => 365,
                  :peso => 700.2,
                  :precio_compra => 4.25,
                  :precio_venta => 4.75
        ejemplar  "12345678-00000002",
                  :edad => 465,
                  :peso => 1200.2,
                  :precio_compra => 1.25,
                  :precio_venta => 2.75                                  
      end
    end
    context "Atributos de la clase DSLGranja" do
      it "Tiene una clase para almacenar los datos de la granja" do
        expect(@granja0).not_to eq(nil) 
      end
      it "Tiene un método para los datos" do
        expect(@granja0).to respond_to(:datos)
        expect(@granja0.respond_to?(:datos)).to eq(true)
      end
      it "Tiene un método para los ejemplares" do
        expect(@granja0).to respond_to(:ejemplar)
        expect(@granja0.respond_to?(:ejemplar)).to eq(true)
      end
      it "Se obtiene una cadena con la información de la granja correctamente formateada" do
        expect(@granja0.to_s).to eq("Granja: 12345678\nDatos:\nPollos muertos (PyME - Pequeña y mediana empresa) (pollos)\n\n1) 12345678-00000001 (365) (700.2) (4.25) (4.75)\n2) 12345678-00000002 (465) (1200.2) (1.25) (2.75)\n")           
        puts @granja0
      end
    end
  end
end
