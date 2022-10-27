require 'lib/matrices'
require 'test/unit'

class Testmatrices < Test::Unit::TestCase
  def setup
    @matriz1 = Matrices.new(2, 3, [[0,1,6],[2,3,8]])
    @matriz2 = Matrices.new(2, 3, [[1,4,2],[3,5,2]])
    @matriz3 = Matrices.new(3, 3, [[1,4,2],[3,5,2],[3,5,2]])
    @matriz4 = Matrices.new(3, 3, [[1,4,2],[3,5,2],[3,5,2]])
    @matriz5 = Matrices.new(2, 2, [[1,4],[3,5]])

  end
  def test_valorPosicion
    assert_equal(3, @matriz1.getValorPosicion(1, 1))
    assert_equal("3", @matriz1.getValorPosicion(1, 1).to_s)
    assert_equal(3, @matriz1.getValorPosicion(1, 1).to_i)
  end

  def test_Suma
    assert_equal(nil, @matriz1.suma(@matriz3))
    assert_equal("[[1, 5, 8], [5, 8, 10]]", (@matriz1.suma(@matriz2)).to_s)
    assert_equal("[[2, 8, 4], [6, 10, 4], [6, 10, 4]]", @matriz3.suma(@matriz4).to_s)
  end
  def test_productoEscalar
    assert_equal("[[2, 8, 4], [6, 10, 4], [6, 10, 4]]", @matriz3.productoEscalar(2).to_s)
    assert_equal("[[3, 12, 6], [9, 15, 6]]", @matriz2.productoEscalar(3).to_s)
    assert_equal("[[0, 0, 0], [0, 0, 0]]", @matriz1.productoEscalar(0).to_s)
  end
  def test_transpuesta
    assert_equal("", @matriz1.transpuesta.to_s)
    assert_equal("[[1, 3, 3], [4, 5, 5], [2, 2, 2]]", @matriz4.transpuesta.to_s)
    assert_equal("[[1, 3], [4, 5]]", @matriz5.transpuesta.to_s)
  end
end