RSpec.describe Granja do
  # Crea los objetos de la clase Datos con los que se va a trabajar.
  before :each do
    @granja0  =  Granja::Datos.new(00, "Granja de Pin y Pon", "Granja escuela", "Granja donde se imparten conocimientos relacinados con la ganadería.")
    @granja1  =  Granja::Datos.new(01, "Rancho Arizona", "Granja láctea", "Granja de productos lácteos.")
    @granja2  =  Granja::Datos.new(02, "Ca'Dori", "Granja de peces", "Granja de cría de peces.")
    @granja3  =  Granja::Datos.new(03, "Rancho Julian", "Establo", "Granja de entramiento de caballos.")
  end

  # Instancia del objeto.
  it "Prueba de instacia de objeto." do
    expect(@granja0).not_to eq(nil)
    expect(@granja1).not_to eq(nil)
    expect(@granja2).not_to eq(nil)
    expect(@granja3).not_to eq(nil)
  end

  # Test de la información de la identificacion de una Granja.
  it "Prueba de la identificación de una Granja." do
    expect(@granja0.identificacion).to eq(00)
    expect(@granja1.identificacion).to eq(01)
    expect(@granja2.identificacion).to eq(02)
    expect(@granja3.identificacion).to eq(03)
  end

  # Test de la información del nombre de una Granja.
  it "Prueba del nombre de una Granja." do
    expect(@granja0.nombre).to eq("Granja de Pin y Pon")
    expect(@granja1.nombre).to eq("Rancho Arizona")
    expect(@granja2.nombre).to eq("Ca'Dori")
    expect(@granja3.nombre).to eq("Rancho Julian")
  end

  # Test de la información del tipo de una Granja.
  it "Prueba de la información de una Granja." do
    expect(@granja0.tipo).to eq("Granja escuela")
    expect(@granja1.tipo).to eq("Granja láctea")
    expect(@granja2.tipo).to eq("Granja de peces")
    expect(@granja3.tipo).to eq("Establo")
  end

  # Test de la información de la descripción de una Granja.
  it "Prueba de la descripción de una Granja." do
    expect(@granja0.descripcion).to eq("Granja donde se imparten conocimientos relacinados con la ganadería.")
    expect(@granja1.descripcion).to eq("Granja de productos lácteos.")
    expect(@granja2.descripcion).to eq("Granja de cría de peces.")
    expect(@granja3.descripcion).to eq("Granja de entramiento de caballos.")
  end

  # Test de la información de los datos de una Granja.
  it "Prueba de obtener una cadena con la información de una Granja" do
    expect(@granja0.to_s).to eq("Identificacion: 0, Nombre: Granja de Pin y Pon, Tipo: Granja escuela, Descripcion: Granja donde se imparten conocimientos relacinados con la ganadería.")
    expect(@granja1.to_s).to eq("Identificacion: 1, Nombre: Rancho Arizona, Tipo: Granja láctea, Descripcion: Granja de productos lácteos.")
    expect(@granja2.to_s).to eq("Identificacion: 2, Nombre: Ca'Dori, Tipo: Granja de peces, Descripcion: Granja de cría de peces.")
    expect(@granja3.to_s).to eq("Identificacion: 3, Nombre: Rancho Julian, Tipo: Establo, Descripcion: Granja de entramiento de caballos.")
  end
end