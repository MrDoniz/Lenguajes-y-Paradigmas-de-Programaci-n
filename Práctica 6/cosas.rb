

class Recipe

  def initialize(name, &block)
    @name = name
    @ingredients = []
    @instructions = []

    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval(&block) 
      end
    end
  end

  def to_s
    output = @name
    output << "\n#{'=' * @name.size}\n\n"
    output << "Ingredients: #{@ingredients.join(', ')}\n\n"

    @instructions.each_with_index do |instruction, index|
      output << "#{index + 1}) #{instruction}\n"
    end

    output
  end

  def ingredient(name, options = {})
    ingredient = name
    ingredient << " (#{options[:amount]})" if options[:amount]

    @ingredients << ingredient
  end

  def step(text, options = {})
    instruction = text
    instruction << " (#{options[:during]})" if options[:during]

    @instructions << instruction
  end
end

mac_and_cheese = Recipe.new("Noodles and Cheese") do 
  ingredient "Water",   :amount => "2 cups"
  ingredient "Noodles", :amount => "1 cup"
  ingredient "Cheese",  :amount => "1/2 cup"

  step "Heat water to boiling.",        :during => "5 minutes"
  step "Add noodles to boiling water.", :during => "6 minutes"
  step "Drain water."
  step "Mix cheese in with noodles."
end

puts mac_and_cheese

#################################################################################

require 'lib/julio/productor'
require 'test/unit'
class TestRestauradores < Test::Unit::TestCase
  def setup
    r1 = Restaurador.new([["zanahoria", "verano", 25,27], ["lechuga", "verano", 25, 70]])
    r2 = Restaurador.new("local", [["zanahoria", "verano", 25,28], ["lechuga", "verano", 25, 90]])
    @cadena = [r1, r2]
  end

  def test_simple
    x= @cadena.min 
    assert_equal(118, x.cjto_hortalizas.map{|i| i[3]}.inject(:+))
  end

end  

#falla porque falta hacer que sean comparables, modifico en restaurador.rb y al comienzo del todo pongo:
include Comparable
#y debajo del end de initialize pongo lo siguiente:
def <=>(other)
  return nil unless other.instance_of? Restaurador
  @cjto_hortalizas.map{|a| a[3]}.inject(:+) <=> other.cjto_hortalizas.map{|b| b[3]}.inject(:+)
end











#########################################################################################



if filas == matriz2.filas && columnas == matriz2.columnas
  matriz3 = Array.new(filas) { Array.new(columnas) }
  for i in 0..filas-1
    for j in 0..columnas-1
      matriz3[i][j] = matriz1[i][j] + matriz2[i][j]
    end
  end
  return matriz3
else
  puts "Las matrices no tienen las mismas dimensiones"
end




  







    

    #Resta dos matrices y devuelve una matriz resultado si no son compatibles devuelve nil
    def resta(otro)
      if @filas == otro.filas && @columnas == otro.columnas
        matriz = Array.new(@filas) { Array.new(@columnas) } 
        for i in 0..@filas-1
          for j in 0..@columnas-1
            matriz[i][j] = @matriz1[i][j].to_i - otro.matriz1[i][j].to_i
          end
        end
        return matriz
      else
        return nil
      end
    end



    if @filas == otro.filas && @columnas == otro.columnas
      #matriz = Array.new(@filas) { Array.new(@columnas) } 
      matrizResultado = Matrices.new(@filas, @columnas, @matriz)
      for i in 0..@filas-1
        for j in 0..@columnas-1
          x = @matriz[0][0] + otro.matriz[0][0]
        end
      end
      return matriz
    else
      return nil
    end