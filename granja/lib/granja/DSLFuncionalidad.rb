class Granja::DSLFuncionalidad
  def initialize(name, &block)
    @name = name
    @beneficio = []
    @bienestar = []
    @productividad = []
    # Compruebo que el bloque contiene una instancia de DSLFuncionalidad
    if block_given?  
      if block.arity == 1
        yield self
      else
        # instance_eval define métodos singleton del objeto (y, por tanto define métodos de clase cuando el objeto es una clase)
        instance_eval(&block)
      end
    end
  end
  
  # Método to_s: Muestra la información formateada
  def to_s
    output = ""
    output << "Granja: #{@name}\n"
    output << "Beneficio: #{@beneficio.join(', ')}\n"
    output << "Bienestar: #{@bienestar.join(', ')}\n"
    output << "Productividad: #{@productividad.join(', ')}"
    output
  end
  
  # Método beneficio: Método para calcular el beneficio de una granja
  def beneficio(granja, options = {})
    @beneficio << Funciones.beneficio_neto(granja)
  end
  
  # Método bienestar: Método para calcular el bienestar de una granja
  def bienestar(granja, options = {})
    if options[:condiciones] == :campo
      @bienestar <<Funciones.bienestar_animal(Funciones::CAMPO_ABIERTO, granja)
    else
      @bienestar << Funciones.bienestar_animal(Funciones::JAULAS, granja)
    end
  end
  
  # Método productividad: Método para calcular la productividad de una granja
  def productividad(granja, options = {})
    if options[:condiciones] == :campo
      @productividad << Funciones.indice_productividad(Funciones::CAMPO_ABIERTO, granja)
    else
      @productividad << Funciones.indice_productividad(Funciones::JAULAS, granja)
    end
  end
end