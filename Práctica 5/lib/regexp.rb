class Regexp
  attr_reader :cadena
  
    def initialize(cadena)
      @cadena = cadena
    end
  
    def concat(other)
      Regexp.new(@cadena + "." + other.cadena)
    end

    def alt(other)
      Regexp.new(@cadena + "|" + other.cadena)
    end

    def kleen
      Regexp.new(@cadena + "*")
    end

    def to_s
      return "#{@cadena}"
    end
  end