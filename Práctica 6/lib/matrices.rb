class Matrices
  attr_reader :filas, :columnas, :matriz
    def initialize(filas, columnas, matriz)
      @filas = filas
      @columnas = columnas
      @matriz = matriz
    end
    
    def getValorPosicion(m,n)
      return @matriz[m][n]
    end

    def to_s
      string = "["
      for i in 0..@filas-1
        string += "["
        for j in 0..@columnas-1
          string += "#{@matriz[i][j]}"
          if j != @columnas-1
            string += ", "
          end
        end
        if i != @filas-1
          string += "], "
        else 
          string += "]"
        end
      end
      string += "]"
      return string
    end

    def suma(otro)
      if @filas == otro.filas && @columnas == otro.columnas
        matrizResultado = Matrices.new(@filas, @columnas, @matriz)
        for i in 0..@filas-1
          for j in 0..@columnas-1
            matrizResultado.matriz[i][j] = @matriz[i][j] + otro.matriz[i][j]
          end
        end
        return matrizResultado
      else
        return nil
      end
    end

    def productoEscalar(escalar)
      matrizResultado = Matrices.new(@filas, @columnas, @matriz)
      for i in 0..@filas-1
        for j in 0..@columnas-1
          matrizResultado.matriz[i][j] = @matriz[i][j] * escalar
        end 
      end
      return matrizResultado
    end

    def transpuesta
      if @filas == @columnas
        matrizResultado = Matrices.new(@filas, @columnas, Array.new(@columnas){Array.new(@filas)})
        for i in 0..@filas-1
          for j in 0..@columnas-1
            matrizResultado.matriz[i][j] = getValorPosicion(j,i)
          end
        end
        return matrizResultado
      else
        return nil
      end
    end

end
