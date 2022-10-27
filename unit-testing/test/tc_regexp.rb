require 'lib/Regexp'
require 'test/unit'

class TestRegexp < Test::Unit::TestCase
  def setup
    @cadena1 = Regexp.new("a")
    @cadena2 = Regexp.new("b")
    @cadena3 = Regexp.new("c")
  end
  def test_operation_to_s
    assert_equal("a", (@cadena1).to_s)
    assert_equal("b", (@cadena2).to_s)
    assert_equal("c", (@cadena3).to_s)
  end
  def test_operation_concat
    @cadena4 = @cadena1.concat(@cadena2)
    assert_equal("a.b", (@cadena4).cadena)
    @cadena5 = @cadena4.concat(@cadena3)
    assert_equal("a.b.c", (@cadena5.cadena))
    @cadena6 = @cadena5.concat(@cadena4)
    assert_equal("a.b.c.a.b", (@cadena6).to_s)
  end
  def test_operation_alt
    @cadena7 = @cadena1.alt(@cadena1.concat(@cadena2))
    assert_equal("a|a.b", (@cadena7).to_s)
    @cadena8 = @cadena7.alt(@cadena2.concat(@cadena3))
    assert_equal("a|a.b|b.c", (@cadena8).to_s)
    @cadena9 = @cadena7.alt(@cadena3.concat(@cadena8))
    assert_equal("a|a.b|c.a|a.b|b.c", (@cadena9).to_s)
  end
  def test_operation_kleen
    @cadena10 = @cadena3.kleen
    assert_equal("c*", (@cadena10).to_s)
    @cadena11 = @cadena2.kleen
    assert_equal("b*", (@cadena11).to_s)
    @cadena12 = @cadena10.kleen
    assert_equal("c**", (@cadena12).to_s)
  end
end