RSpec.describe Granja do
  before :each do
    # Muy deficiente, Deficiente, Adecuado, Muy adecuado
    @granja0  =  Granja::Funcion.new("Adecuado", "Muy adecuado", "Muy deficiente")
    @granja1  =  Granja::Funcion.new("Adecuado", "Deficiente", "Adecuado")
    @granja2  =  Granja::Funcion.new("Muy deficiente", "Adecuado", "Deficiente")
    @granja3  =  Granja::Funcion.new("Deficiente", "Adecuado", "Adecuado")
  end

  # Instancia del objeto.
  it "Prueba de instacia de objeto." do
    expect(@granja0).not_to eq(nil)
    expect(@granja1).not_to eq(nil)
    expect(@granja2).not_to eq(nil)
    expect(@granja3).not_to eq(nil)
  end

  # Test de la información de la calidad de vida de una Granja.
  it "Prueba de la calidad de vida de una Granja." do
    expect(@granja0.vida).to eq("Adecuado")
    expect(@granja1.vida).to eq("Adecuado")
    expect(@granja2.vida).to eq("Muy deficiente")
    expect(@granja3.vida).to eq("Deficiente")
  end

  # Test de la información de de los cuidados de una Granja.
  it "Prueba de los cuidados de una Granja." do
    expect(@granja0.cuidado).to eq("Muy adecuado")
    expect(@granja1.cuidado).to eq("Deficiente")
    expect(@granja2.cuidado).to eq("Adecuado")
    expect(@granja3.cuidado).to eq("Adecuado")
  end

  # Test de la información la reproduccion de una Granja.
  it "Prueba de la reproduccion de una Granja." do
    expect(@granja0.reproduccion).to eq("Muy deficiente")
    expect(@granja1.reproduccion).to eq("Adecuado")
    expect(@granja2.reproduccion).to eq("Deficiente")
    expect(@granja3.reproduccion).to eq("Adecuado")
  end

  # Test de la información de las funciones de una Granja.
  it "Prueba de obtener una cadena con la información de la Granja." do
    expect(@granja0.to_s).to eq("Vida: Adecuado, Cuidado: Muy adecuado, Reproduccion: Muy deficiente")
    expect(@granja1.to_s).to eq("Vida: Adecuado, Cuidado: Deficiente, Reproduccion: Adecuado")
    expect(@granja2.to_s).to eq("Vida: Muy deficiente, Cuidado: Adecuado, Reproduccion: Deficiente")
    expect(@granja3.to_s).to eq("Vida: Deficiente, Cuidado: Adecuado, Reproduccion: Adecuado")
  end
end