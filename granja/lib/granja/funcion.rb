# Modulo Granja que contiene las funciones de la granja.
module Granja
  # Clase Funcion que contiene las funciones de la granja.
  class Funcion
    # Getters que devuelven vida, cuidado y reproduccion de la clase.
    attr_reader :vida, :cuidado, :reproduccion;
    # Constructor de la clase.
    # @param vida [String] Valor de vida de la clase.
    # @param cuidado [String] Valor de cuidado de la clase.
    # @param reproduccion [String] Valor de reproduccion de la clase.
    # @return [Funcion] Objeto de la clase Funcion.
    def initialize(vida, cuidado, reproduccion)
      @vida, @cuidado, @reproduccion = vida, cuidado, reproduccion
    end
    # Método to_s que devuelve un string con los valores de la clase.
    def to_s
      "Vida: #{@vida}, Cuidado: #{@cuidado}, Reproduccion: #{@reproduccion}"
    end
  end
end