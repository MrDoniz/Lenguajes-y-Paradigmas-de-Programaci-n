# Clase Datos que contiene los datos de la granja.
# Ave < Animal hace herencia de Animal
class Ave < Animal
  include Comparable
  # Getters que devuelven el identificador, la edad, el sexo y el peso.
  attr_reader :pico, :pata, :movilidad
  # Constructor de la clase Animal.
  # @param identificacion [String] Identificador del animal.
  # @param edad [Integer] Edad del animal.
  # @param sexo [String] Sexo del animal.
  # @param peso [Float] Peso del animal.
  def initialize(identificacion, edad, sexo, peso, pico, pata, movilidad)
    super(identificacion, edad, sexo, peso)
    @pico = pico
    @pata = pata
    @movilidad = movilidad
  end
  # Metodo que devuelve una cadena de texto con los datos del animal.
  # @return [String] Cadena de texto con los datos del animal.
  def to_s
    out = ""
    out += super.to_s
    out += "\n"
    out += "Tipo de pico: #{pico}\n"
    out += "Tipo de pata: #{pata}\n"
    out += "Tipo de movilidad: #{movilidad}"
  end
  # Método que compara dos objetos de la clase Ave.
  # @param other [Ave] Objeto de la clase Ave.
  # @return [Boolean] Devuelve true si son iguales y false si no lo son.
  def <=>(other)
    if (other).is_a?Ave
      @edad <=> other.edad
    elsif
      false      
    end
  end
  
  # Sobrecarga de ==: Para identificar si dos animales son iguales
  def ==(other)
    if (other).is_a?Ave
      @identificacion == other.identificacion && @edad == other.edad && @sexo == other.sexo && @peso == other.peso && @pico == other.pico && @pata == other.pata && @movilidad == other.movilidad      
    elsif
      false
    end
  end
  
  # Sobrecarga de +: Para aumentar el peso del animal
  def +(other)
    if (other).is_a?Float
      Ave.new(@identificacion, @edad, @sexo, @peso + other, @pico, @pata, @movilidad)
    elsif
      false
    end
  end
end  