class Avicola < Datos
  include Enumerable, Funciones
  attr_reader :tipo_ave, :destino, :cantidad_de_aves, :precio_compra, :precio_venta, :lista_aves
  attr_writer :precio_venta
  def initialize(identificacion, nombre, tipo, descripcion, tipo_ave, destino, cantidad_de_aves, precio_compra, precio_venta, lista_aves)
    super(identificacion, nombre, tipo, descripcion)
    @tipo_ave = tipo_ave
    @destino = destino
    @cantidad_de_aves = cantidad_de_aves
    @precio_compra = precio_compra
    @precio_venta = precio_venta
    @lista_aves = lista_aves
  end
  def to_s
    out = ""
    out += super.to_s
    out += "\n"
    out += "Tipo de ave: #{tipo_ave}\n"
    out += "Destino: #{destino}\n"
    out += "Cantidad de animales: #{cantidad_de_aves}\n"
    out += "Precio unitario de compra: #{precio_compra}\n"
    out += "Precio unitario de venta: #{precio_venta}\n"
    out += "Animales: #{lista_aves}"
  end
  def each
    yield @cantidad_de_aves
    yield @precio_compra
    yield @precio_venta
  end
  def get_jaula
    Funciones::JAULAS
  end
  def get_campo_abierto
    Funciones::CAMPO_ABIERTO
  end
  def cuidados(valor)
    Funciones.cuidados(valor, @lista_aves)
  end
  def reproduccion(valor)
    Funciones.reproduccion(valor, @lista_aves)
  end
end  