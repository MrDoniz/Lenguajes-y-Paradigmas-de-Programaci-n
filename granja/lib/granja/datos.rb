# Modulo Granja que contiene los datos de la granja.
module Granja
  # Clase Datos que contiene los datos de la granja.
  class Datos
    # Getters que devuelven el identificador, nombre, tipo y descripción de la clase.
    attr_reader :identificacion, :nombre, :tipo, :descripcion;
    # Constructor de la clase Datos.
    # @param identificacion [Integer] Identificador de la granja.
    # @param nombre [String] Nombre de la granja.
    # @param tipo [String] Tipo de la granja.
    # @param descripcion [String] Descripción de la granja.
    # @return [Datos] Objeto de la clase Datos.
    def initialize(identificacion, nombre, tipo, descripcion)
      @identificacion = identificacion
      @nombre = nombre
      @tipo = tipo
      @descripcion = descripcion
    end
    # Método to_s que devuelve una cadena con los datos de la granja.
    def to_s
      "Identificacion: #{@identificacion}, Nombre: #{@nombre}, Tipo: #{@tipo}, Descripcion: #{@descripcion}"
    end
  end
end