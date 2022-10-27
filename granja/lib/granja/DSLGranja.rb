class Granja::DSLGranja
  attr_reader :name, :datos, :ejemplares
  def initialize(name, &block)
    @name = name
    @datos = []
    @ejemplares = []
    # Compruebo que el bloque contiene una instancia de DSLFuncionalidad
    if block_given?  
      if block.arity == 1
        yield self
      else
        # instance_eval define métodos del objeto (y, por tanto define métodos de clase cuando el objeto es una clase)
        instance_eval(&block)
      end
    end
  end

  def to_s
    output = ""
    output << "Granja: #{@name}\n"
    output << "Datos:\n"
    output << "#{@datos.join(', ')}\n\n"
    @ejemplares.each_with_index do |ejemplares, index|
      output << "#{index + 1}) #{ejemplares}\n"
    end
    output
  end

  def datos(name, options = {})
    dato = name
    
    dato << " (#{options[:descripcion]})" if options[:descripcion]
    dato << " (#{options[:tipo]})" if options[:tipo]

    @datos << dato
  end

  def ejemplar(identify, options = {})
    ejemplar = identify
    
    ejemplar << " (#{options[:edad]})" if options[:edad]
    ejemplar << " (#{options[:peso]})" if options[:peso]
    ejemplar << " (#{options[:precio_compra]})" if options[:precio_compra]
    ejemplar << " (#{options[:precio_venta]})" if options[:precio_venta]
  
    @ejemplares << ejemplar
  end
end