class Animal
  # include Comparable para poder usar el método <=> en la clase Animal.
  include Comparable
  # Getters que devuelven el identificador, la edad, el sexo y el peso.
  attr_reader :identificacion, :edad, :sexo, :peso
  # Constructor de la clase Animal.
  # @param identificacion [String] Identificador del animal.
  # @param edad [Integer] Edad del animal.
  # @param sexo [String] Sexo del animal.
  # @param peso [Float] Peso del animal.
  # @return [Animal] Objeto de la clase Animal.
  @@total_animal = 0
  def initialize(identificacion, edad, sexo, peso)
    @identificacion = identificacion 
    @edad = edad
    @sexo = sexo
    @peso = peso
    @@total_animal += 1 
  end
  # Método to_s que devuelve una cadena con los datos del animal.
  # @return [String] Devuelve una cadena con los datos del animal.
  def to_s
    out = ""
    out += "Identificacion: #{identificacion}\n"
    out += "Edad: #{edad}\n"
    out += "Sexo: #{sexo}\n"
    out += "Peso: #{peso}"
  end
  # Método que devuelve el número de objetos de la clase Animal.
  # @return [Integer] Devuelve un entero con el número de objetos de la clase Animal.
  def self.total_animal
    @@total_animal 
  end
  # Método que compara dos objetos de la clase Animal.
  # @param other [Animal] Objeto de la clase Animal.
  # @return [Boolean] Devuelve true si son iguales y false si no lo son.
  def <=>(other)
    if (other).is_a?Animal
      @peso <=> other.peso
    elsif
      false      
    end
  end

  # Sobrecarga de ==: Para identificar si dos animales son iguales
  def ==(other)
    if (other).is_a?Animal
      @identificacion == other.identificacion && @edad == other.edad && @sexo == other.sexo && @peso == other.peso
    elsif
      false       
    end
  end  
end  