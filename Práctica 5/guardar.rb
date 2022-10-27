# complejo.rb
class NumeroComplejo
  attr_accessor :numero_real
  attr_accessor :numero_imaginario
  
  def initialize(numero_real, numero_imaginario)
    @numero_real       = numero_real
    @numero_imaginario = numero_imaginario
  end

  def +(numeros)
    NumeroComplejo.new(@numero_real+numeros.numero_real, @numero_imaginario + numeros.numero_imaginario)
  end
  def -(numeros)
    NumeroComplejo.new(@numero_real-numeros.numero_real, @numero_imaginario - numeros.numero_imaginario)
  end
  def ^(scalar)
    NumeroComplejo.new(@numero_real * scalar, @numero_imaginario * scalar)
  end
  def *(numeros)
    NumeroComplejo.new(@numero_real*numeros.numero_real - @numero_imaginario*numeros.numero_imaginario, @numero_imaginario*numeros.numero_real + @numero_real*numeros.numero_imaginario)
  end
  def /(numeros)
    NumeroComplejo.new(((@numero_real*@numero_imaginario)+(numeros.numero_real*numeros.numero_imaginario))/((@numero_imaginario*@numero_imaginario)+(numeros.numero_imaginario*numeros.numero_imaginario)),((numeros.numero_real*@numero_imaginario)-(@numero_real*numeros.numero_imaginario))/((@numero_imaginario*@numero_imaginario)+(numeros.numero_imaginario*numeros.numero_imaginario)))
  end
  
  def to_s
    if numero_imaginario > 0
      @numero_real.to_s + " + " +@numero_imaginario.to_s + "i"
    elsif numero_imaginario == 0
      @numero_real.to_s
    elsif numero_real == 0
      @numero_imaginario.to_s
    else
      @numero_real.to_s + "" +@numero_imaginario.to_s + "i"
    end
  end
end


# tc_complejo.rb
require 'lib/complejo'
require 'test/unit'
class TestNumeroComplejo < Test::Unit::TestCase
  def setup
    @numero_a = NumeroComplejo.new(1,1)
    @numero_b = NumeroComplejo.new(4,3)
    @numero_c = NumeroComplejo.new(8,2)
    @numero_d = NumeroComplejo.new(0,2)
  end
  def test_simple
    assert_equal("1 + 1i", (@numero_a).to_s)
    assert_equal("4 + 3i", (@numero_b).to_s)
    assert_equal("8 + 2i", (@numero_c).to_s)
    assert_equal("0 + 2i", (@numero_d).to_s)
  end
  def test_operaciones
    assert_equal("5 + 4i", (@numero_a + @numero_b).to_s)
    assert_equal("-4 + 1i", (@numero_b - @numero_c).to_s)
    assert_equal("8 + 2i", (@numero_c ^ 1).to_s)
    assert_equal("-2 + 2i", (@numero_d * @numero_a).to_s)
    assert_equal("3 + 1i", (@numero_a / @numero_c).to_s)
  end
  def test_type_check
    assert_raise(ArgumentError) {NumeroComplejo.new()}
  end
  def test_failure
    assert_not_equal("2 + 81", (@numero_b ^ 3).to_s, "Producto escalar")
    assert_not_equal("0 + 123", (@numero_a + @numero_b).to_s, "Suma")
    assert_not_equal("-6 - 12", (@numero_a - @numero_b).to_s, "Resta")
  end
end