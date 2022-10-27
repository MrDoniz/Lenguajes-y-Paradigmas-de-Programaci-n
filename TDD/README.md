# Clase Matriz con RSpec

1. Intalar la gema Rspec (gem install rspec)

2. Ejecutar rspec --init (se crean el fichero .rspec, el directorio spec/ y el fichero spec/spec\_helper.rb)

3. Pruebas:
    - Preguntar por el fichero que ha de contener a la clase
      <pre><code> 
      $ rspec
      An error occurred while loading ./spec/matrices_spec.rb. - Did you mean?
      rspec ./spec/spec_helper.rb

      Failure/Error: require 'matrices'

      LoadError:
      cannot load such file -- matrices
      # ./spec/matrices_spec.rb:1:in `<top (required)>'
      No examples found.
      </code></pre>
    - Se arregla el fallo que produce la primera prueba
      <pre><code> 
      $ rspec
      No examples found.
      Finished in 0.0006 seconds (files took 0.16118 seconds to load)
      0 examples, 0 failures
      </code></pre>
    - Debe existir una clase para representar una matriz: 
      <pre><code> 
      $ rspec
      An error occurred while loading ./spec/matrices_spec.rb.
      Failure/Error:
      describe Matrices do
      end

      NameError:
      uninitialized constant Matrices
      # ./spec/matrices_spec.rb:3:in `<top (required)>'
      No examples found.


      Finished in 0.00004 seconds (files took 0.27016 seconds to load)
      0 examples, 0 failures, 1 error occurred outside of examples
      </code></pre>
    - Se arregla el fallo que produce la prueba
      <pre><code> 
      $ rspec
      No examples found.
      Finished in 0.0006 seconds (files took 0.16118 seconds to load)
      0 examples, 0 failures
      </code></pre>
    - Se debe poder acceder a los valores de la matriz:
      <pre><code> 
      $ rspec
      F

      Failures:

      1) Matrices Se debe poder acceder a los valores con los getters
      Failure/Error: expect(matriz1.filas).to eq(2)

      NoMethodError:
      undefined method `filas' for #<Matrices:0x00005589f53568b0>
      # ./spec/matrices_spec.rb:10:in `block (2 levels) in <top (required)>'

      Finished in 0.00483 seconds (files took 0.13995 seconds to load)
      1 example, 1 failure

      Failed examples:

      rspec ./spec/matrices_spec.rb:9 # Matrices Se debe poder acceder a los valores con los getters
      </code></pre>
    - Se arregla el fallo que produce la prueba
      <pre><code> 
      $ rspec
      Finished in 0.0053 seconds (files took 0.13718 seconds to load)
      1 example, 0 failures

      </code></pre>
    - Pasa la prueba to_s:
      <pre><code> 
      $ rspec
      ...F

      Failures:

      1) Matrices El formato de la matriz será
      Failure/Error: expect(matriz1.to_s).to eq("[[0, 1, 6], [2, 3, 8]]")

      expected: "[[0, 1, 6], [2, 3, 8]]"
      got: "#<Matrices:0x0000559f86d0c660>"

      (compared using ==)
      # ./spec/matrices_spec.rb:25:in `block (2 levels) in <top (required)>'

      Finished in 0.02288 seconds (files took 0.1388 seconds to load)
      4 examples, 1 failure

      Failed examples:

      rspec ./spec/matrices_spec.rb:24 # Matrices El formato de la matriz será
      </code></pre>
    - Se arregla el fallo que produce la prueba
      <pre><code> 
      $ rspec
      Finished in 0.0053 seconds (files took 0.13718 seconds to load)
      example, 0 failures
      </code></pre>
    - Se debe poder sumar dos matrices.
      <pre><code> 
      $ rspec
      ....F

      Failures:

      1) Matrices Se debe poder sumar dos matrices.
      Failure/Error: expect(matriz1.suma(matriz3)).to eq(nil)

      NoMethodError:
      undefined method `suma' for #<Matrices:0x00005557689c3eb0>
      # ./spec/matrices_spec.rb:29:in `block (2 levels) in <top (required)>'

      Finished in 0.00554 seconds (files took 0.16185 seconds to load)
      5 examples, 1 failure

      Failed examples:

      rspec ./spec/matrices_spec.rb:28 # Matrices Se debe poder sumar dos matrices.
      </code></pre>
    - Se arregla el fallo que produce la prueba.
      <pre><code> 
      $ rspec
      .....

      Finished in 0.0054 seconds (files took 0.15816 seconds to load)
      5 examples, 0 failures
      </code></pre>
    - Se debe poder realizar el producto escalar de una matriz.
      <pre><code> 
      $ rspec
      .....F

      Failures:

      1) Matrices Se debe poder realizar el producto escalar de una matriz.
      Failure/Error: expect(matriz3.productoEscalar(2).to_s).to eq("[[2, 8, 4], [6, 10, 4], [6, 10, 4]]")

      NoMethodError:
      undefined method `productoEscalar' for #<Matrices:0x000055af03c6e3e8>
      # ./spec/matrices_spec.rb:36:in `block (2 levels) in <top (required)>'

      Finished in 0.00557 seconds (files took 0.14823 seconds to load)
      6 examples, 1 failure

      Failed examples:

      rspec ./spec/matrices_spec.rb:34 # Matrices Se debe poder realizar el producto escalar de una matriz.
      </code></pre>
    - Se arregla el fallo que produce la prueba.
      <pre><code> 
      $ rspec
      ......

      Finished in 0.00549 seconds (files took 0.1467 seconds to load)
      6 examples, 0 failures
      </code></pre>
    - Se debe poder realizar la traspuesta de una matriz.
      <pre><code> 
      $ rspec
      ......F

      Failures:

      1) Matrices Se debe poder realizar la traspuesta de una matriz.
      Failure/Error: expect(matriz1.transpuesta.to_s).to eq("")

      NoMethodError:
      undefined method `transpuesta' for #<Matrices:0x000055738057ab90>
      # ./spec/matrices_spec.rb:42:in `block (2 levels) in <top (required)>'

      Finished in 0.00573 seconds (files took 0.15831 seconds to load)
      7 examples, 1 failure

      Failed examples:

      rspec ./spec/matrices_spec.rb:41 # Matrices Se debe poder realizar la traspuesta de una matriz.
      </code></pre>
    - Se arregla el fallo que produce la prueba.
      <pre><code> 
      $ rspec
      .......

      Finished in 0.00661 seconds (files took 0.14734 seconds to load)
      7 examples, 0 failures
      </code></pre>