require 'matrices'

describe Matrices do
  matriz1 = Matrices.new(2, 3, [[0,1,6],[2,3,8]])
  matriz2 = Matrices.new(2, 3, [[1,4,2],[3,5,2]])
  matriz3 = Matrices.new(3, 3, [[1,4,2],[3,5,2],[3,5,2]])
  matriz4 = Matrices.new(3, 3, [[1,4,2],[3,5,2],[3,5,2]])
  matriz5 = Matrices.new(2, 2, [[1,4],[3,5]])
  
  it "Se instancia una matriz con m, n y los valores de la matriz." do
    expect( Matrices.new(2, 3, [[0,1,6],[2,3,8]])).not_to eq(nil)
  end
  
  it "Se debe poder acceder a los valores de la matriz." do
    expect(matriz1.getValorPosicion(1, 1)).to eq(3)  
    expect(matriz1.getValorPosicion(1, 1).to_s).to eq("3")  
    expect(matriz1.getValorPosicion(1, 1).to_i).to eq(3)  
  end

  it "Se debe poder acceder a los valores con los getters" do
    expect(matriz1.filas).to eq(2)   
  end

  it "El formato de la matriz será" do
    expect(matriz1.to_s).to eq("[[0, 1, 6], [2, 3, 8]]")
  end

  it "Se debe poder sumar dos matrices." do
    expect(matriz1.suma(matriz3)).to eq(nil)  
    expect(matriz1.suma(matriz2).to_s).to eq("[[1, 5, 8], [5, 8, 10]]")  
    expect(matriz3.suma(matriz4).to_s).to eq("[[2, 8, 4], [6, 10, 4], [6, 10, 4]]")  
  end

  it "Se debe poder realizar el producto escalar de una matriz." do
    matriz3 = Matrices.new(3, 3, [[1,4,2],[3,5,2],[3,5,2]])
    expect(matriz3.productoEscalar(2).to_s).to eq("[[2, 8, 4], [6, 10, 4], [6, 10, 4]]")  
    expect(matriz2.productoEscalar(3).to_s).to eq("[[3, 12, 6], [9, 15, 6]]")  
    expect(matriz1.productoEscalar(0).to_s).to eq("[[0, 0, 0], [0, 0, 0]]")  
  end

  it "Se debe poder realizar la traspuesta de una matriz." do
    expect(matriz1.transpuesta.to_s).to eq("")  
    expect(matriz4.transpuesta.to_s).to eq("[[1, 3, 3], [4, 5, 5], [2, 2, 2]]")  
    expect(matriz5.transpuesta.to_s).to eq("[[1, 3], [4, 5]]")  
  end
end