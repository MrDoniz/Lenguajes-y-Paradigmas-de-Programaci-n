# Granja

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/granja`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'granja'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install granja

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

<<<<<<< HEAD
Bug reports and pull requests are welcome on GitHub at https://github.com/mrdoniz/granja. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/mrdoniz/granja/blob/master/CODE_OF_CONDUCT.md).
=======
Bug reports and pull requests are welcome on GitHub at https://github.com/mrdoniz/granja. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.commrdoniz/granja/blob/master/CODE_OF_CONDUCT.md).
>>>>>>> doc


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Granja project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mrdoniz/granja/blob/master/CODE_OF_CONDUCT.md).
<<<<<<< HEAD
=======

## Bundler
Creo la gema con Bundler (bundle gem granja)

## Pruebas
- Preguntar por el fichero que ha de contener a la clase funcion
    <pre><code> 
    $ rake
    /home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

    An error occurred while loading spec_helper. - Did you mean?
                        rspec ./spec/spec_helper.rb

    Failure/Error: require "granja/funcion"

    LoadError:
    cannot load such file -- granja/funcion
    # ./lib/granja.rb:2:in `require'
    # ./lib/granja.rb:2:in `<top (required)>'
    # ./spec/spec_helper.rb:2:in `require'
    # ./spec/spec_helper.rb:2:in `<top (required)>'
    No examples found.
    No examples found.


    Finished in 0.00006 seconds (files took 0.13556 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples

    Finished in 0.00006 seconds (files took 0.13556 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples
    </code></pre>
- Se arregla el fallo que produce la prueba de la clase funcion
    <pre><code> 
    $ rspec
    No examples found.
    Finished in 0.0006 seconds (files took 0.16118 seconds to load)
    0 examples, 0 failures
    </code></pre>
- Preguntar por el fichero que ha de contener a la clase datos
    <pre><code> 
    $ rake
    /home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

    An error occurred while loading spec_helper. - Did you mean?
                        rspec ./spec/spec_helper.rb

    Failure/Error: require "granja/datos"

    LoadError:
    cannot load such file -- granja/datos
    # ./lib/granja.rb:3:in `require'
    # ./lib/granja.rb:3:in `<top (required)>'
    # ./spec/spec_helper.rb:2:in `require'
    # ./spec/spec_helper.rb:2:in `<top (required)>'
    No examples found.
    No examples found.


    Finished in 0.00006 seconds (files took 0.19701 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples

    Finished in 0.00006 seconds (files took 0.19701 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples
    </code></pre>
- Se arregla el fallo que produce la prueba de la clase funcion
    <pre><code> 
    $ rspec
    No examples found.
    Finished in 0.0006 seconds (files took 0.16118 seconds to load)
    0 examples, 0 failures
    </code></pre>
- Debe existir una clase para representar una Funcion: 
    <pre><code>
    $ rake
    An error occurred while loading ./spec/funcion_spec.rb.
    Failure/Error:
    describe Funcion do
    end

    NameError:
    uninitialized constant Funcion
    # ./spec/funcion_spec.rb:2:in `block in <top (required)>'
    # ./spec/funcion_spec.rb:1:in `<top (required)>'

    Finished in 0.00006 seconds (files took 0.19595 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rake

    Granja
    has a version number
    does something useful

    Finished in 0.0034 seconds (files took 0.14992 seconds to load)
    2 examples, 0 failures
    </code></pre>
- Debe existir una clase para representar una Datos: 
    <pre><code>
    $ rake
    An error occurred while loading ./spec/datos_spec.rb.
    Failure/Error:
    describe Funcion do
    end

    NameError:
    uninitialized constant Funcion
    # ./spec/datos_spec.rb:2:in `block in <top (required)>'
    # ./spec/datos_spec.rb:1:in `<top (required)>'

    Finished in 0.00006 seconds (files took 0.19595 seconds to load)
    0 examples, 0 failures, 1 error occurred outside of examples
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rake

    Granja
    has a version number
    does something useful

    Finished in 0.0034 seconds (files took 0.14992 seconds to load)
    2 examples, 0 failures
    </code></pre>
- Se debe poder instanciar un objeto Funcion:
    <pre><code> 
    $ rspec
    Granja
    Funcion
        Prueba de instacia de objeto. (FAILED - 1)

    Granja
    has a version number
    does something useful

    Failures:

    1) Granja Funcion Prueba de instacia de objeto.
        Failure/Error: @granja0  =  Funcion.new("Adecuado", "Muy adecuado", "Muy deficiente")
        
        ArgumentError:
        wrong number of arguments (given 3, expected 0)
        # ./spec/funcion_spec.rb:5:in `initialize'
        # ./spec/funcion_spec.rb:5:in `new'
        # ./spec/funcion_spec.rb:5:in `block (3 levels) in <top (required)>'

    Finished in 0.00332 seconds (files took 0.14503 seconds to load)
    3 examples, 1 failure

    Failed examples:

    rspec ./spec/funcion_spec.rb:12 # Granja Funcion Prueba de instacia de objeto.
    </code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rake
    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00363 seconds (files took 0.16094 seconds to load)
    3 examples, 0 failures
    </code></pre>
- Se debe poder instanciar un objeto Datos:
    <pre><code> 
    $ rake
    Granja
    Datos
        Prueba de instacia de objeto. (FAILED - 1)

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Failures:

    1) Granja Datos Prueba de instacia de objeto.
        Failure/Error: @granja0  =  Datos.new(00, "Granja de Pin y Pon", "Granja escuela", "Granja donde se imparten conocimientos relacinados con la ganadería.")
        
        ArgumentError:
        wrong number of arguments (given 4, expected 0)
        # ./spec/datos_spec.rb:5:in `initialize'
        # ./spec/datos_spec.rb:5:in `new'
        # ./spec/datos_spec.rb:5:in `block (3 levels) in <top (required)>'

    Finished in 0.00567 seconds (files took 0.16283 seconds to load)
    4 examples, 1 failure

    Failed examples:

    rspec ./spec/datos_spec.rb:12 # Granja Datos Prueba de instacia de objeto.
    </code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rake
    Granja
    Datos
        Prueba de instacia de objeto.

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00381 seconds (files took 0.1565 seconds to load)
    4 examples, 0 failures
    </code></pre>
- Se debe poder acceder a la identificación de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder al nombre de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder al tipo de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder a la descripcion de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder a una cadena con la información de una Granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja (FAILED - 1)

    Granja
    Funcion
        Prueba de instacia de objeto.

    Granja
    has a version number
    does something useful

    Failures:

    1) Granja Datos Prueba de obtener una cadena con la información de una Granja
        Failure/Error: expect(@granja0.to_s).to eq("Identificacion: 0, Nombre: Granja de Pin y Pon, Tipo: Granja escuela, Descripcion: Granja donde se imparten conocimientos relacinados con la ganadería.")
        
        expected: "Identificacion: 0, Nombre: Granja de Pin y Pon, Tipo: Granja escuela, Descripcion: Granja donde se imparten conocimientos relacinados con la ganadería."
                got: "#<Datos:0x00005561830018d0>"
        
        (compared using ==)
        # ./spec/datos_spec.rb:53:in `block (3 levels) in <top (required)>'

    Finished in 0.02637 seconds (files took 0.17174 seconds to load)
    9 examples, 1 failure

    Failed examples:

    rspec ./spec/datos_spec.rb:52 # Granja Datos Prueba de obtener una cadena con la información de una Granja
    </code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rspec

    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    has a version number
    does something useful

    Finished in 0.00465 seconds (files took 0.15098 seconds to load)
    8 examples, 0 failures
    </pre></code> 
- Se debe poder acceder a la vida de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    Funcion
        Prueba de instacia de objeto.
        Prueba de la calidad de vida de una Granja.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder al cuidado de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    Funcion
        Prueba de instacia de objeto.
        Prueba de la calidad de vida de una Granja.
        Prueba de los cuidados de una Granja.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder a la reproduccion de la granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    Funcion
        Prueba de instacia de objeto.
        Prueba de la calidad de vida de una Granja.
        Prueba de los cuidados de una Granja.
        Prueba de la reproduccion de una Granja.

    Granja
    has a version number
    does something useful

    Finished in 0.00396 seconds (files took 0.14556 seconds to load)
    5 examples, 0 failures
    </code></pre>
- Se debe poder acceder a una cadena con la información de una Granja:
    <pre><code> 
    $ rspec
    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    Funcion
        Prueba de instacia de objeto.
        Prueba de la calidad de vida de una Granja.
        Prueba de los cuidados de una Granja.
        Prueba de la reproduccion de una Granja.
        Prueba de obtener una cadena con la información de la Granja. (FAILED - 1)

    Granja
    has a version number
    does something useful

    Failures:

    1) Granja Funcion Prueba de obtener una cadena con la información de la Granja.
        Failure/Error: expect(@granja0.to_s).to eq("Vida: Adecuado, Cuidado: Muy adecuado, Reproduccion: Muy deficiente")
        
        expected: "Vida: Adecuado, Cuidado: Muy adecuado, Reproduccion: Muy deficiente"
                got: "#<Funcion:0x000055a1717271b8>"
        
        (compared using ==)
        # ./spec/funcion_spec.rb:45:in `block (3 levels) in <top (required)>'

    Finished in 0.02368 seconds (files took 0.15191 seconds to load)
    13 examples, 1 failure

    Failed examples:

    rspec ./spec/funcion_spec.rb:44 # Granja Funcion Prueba de obtener una cadena con la información de la Granja.
    </code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code> 
    $ rspec

    Granja
    Datos
        Prueba de instacia de objeto.
        Prueba de la identificación de una Granja.
        Prueba del nombre de una Granja.
        Prueba de la información de una Granja.
        Prueba de la descripción de una Granja.
        Prueba de obtener una cadena con la información de una Granja

    Granja
    Funcion
        Prueba de instacia de objeto.
        Prueba de la calidad de vida de una Granja.
        Prueba de los cuidados de una Granja.
        Prueba de la reproduccion de una Granja.
        Prueba de obtener una cadena con la información de la Granja.

    Granja
    has a version number
    does something useful

    Finished in 0.01348 seconds (files took 0.14921 seconds to load)
    13 examples, 0 failures
    </code></pre>
<<<<<<< HEAD
>>>>>>> doc
=======
- Se debe poder representar animales
    <pre><code> 
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	An error occurred while loading ./spec/animal_spec.rb.
	Failure/Error:
	  describe Animal do
	  # Crea los objetos de la clase Datos con los que se va a trabajar.
		before :each do
		  @animal0 = Animal.new("Pollo", 5, "hembra", 345)
		  @animal1 = Animal.new("Agaporni", 3, "hembra", 233)
		  @animal2 = Animal.new("Pavo", 6, "macho", 343)
		  @animal3 = Animal.new("Pato", 2, "hembra", 365)
		end
		context "Atributos de la clase Animal" do
		  it "Tiene una clase para representar animales" do

	NameError:
	  uninitialized constant Animal
	# ./spec/animal_spec.rb:2:in `block in <top (required)>'
	# ./spec/animal_spec.rb:1:in `<top (required)>'

	Finished in 0.00004 seconds (files took 0.33456 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
    </code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00631 seconds (files took 0.15031 seconds to load)
	14 examples, 0 failures
	</code></pre>
- Se debe poder acceder al identificador del animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00672 seconds (files took 0.1538 seconds to load)
	15 examples, 0 failures
	</code></pre>
- Se debe poder acceder a la edad del animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00936 seconds (files took 0.13656 seconds to load)
	16 examples, 0 failures
	</code></pre>
- Se debe poder acceder al sexo del animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00756 seconds (files took 0.14978 seconds to load)
	17 examples, 0 failures
	</code></pre>
- Se debe poder acceder al peso del animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01052 seconds (files took 0.16151 seconds to load)
	18 examples, 0 failures
	</code></pre>
 Se debe poder obtener información del animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la informaci´on del animal correctamente formateada (FAILED - 1)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Failures:

	  1) Granja Animal Atributos de la clase Animal Se obtiene una cadena con la informaci´on del animal correctamente formateada
		 Failure/Error: expect(@animal0.to_s).to eq("Identificacion: Pollo\nEdad: 345\nSexo: hembra\nPeso: 345")
		 
		   expected: "Identificacion: Pollo\nEdad: 345\nSexo: hembra\nPeso: 345"
				got: "#<Animal:0x000055c54bce65b0>"
		 
		   (compared using ==)
		 
		   Diff:
		   @@ -1,5 +1,2 @@
		   -Identificacion: Pollo
		   -Edad: 345
		   -Sexo: hembra
		   -Peso: 345
		   +#<Animal:0x000055c54bce65b0>
		   
		 # ./spec/animal_spec.rb:40:in `block (4 levels) in <top (required)>'

	Finished in 0.02648 seconds (files took 0.16132 seconds to load)
	19 examples, 1 failure

	Failed examples:

	rspec ./spec/animal_spec.rb:39 # Granja Animal Atributos de la clase Animal Se obtiene una cadena con la informaci´on del animal correctamente formateada

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
	</code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00981 seconds (files took 0.13468 seconds to load)
	19 examples, 0 failures
	</code></pre>
 Se espera que una instancia de la clase Animal sea un Animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00973 seconds (files took 0.15281 seconds to load)
	20 examples, 0 failures
	</code></pre>
- Se espera que una instancia de la clase Animal sea un objeto (Object)
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.02229 seconds (files took 0.14263 seconds to load)
	21 examples, 0 failures
	</code></pre>
- Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01472 seconds (files took 0.13736 seconds to load)
	22 examples, 0 failures
	</code></pre>
- No se espera que una instancia de la clase Animal sea una cadena (string)
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00892 seconds (files took 0.15148 seconds to load)
	23 examples, 0 failures
	</code></pre>
- No se espera que una instancia de la clase Animal sea una número (Numeric)
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01072 seconds (files took 0.1503 seconds to load)
	24 examples, 0 failures
	</code></pre>
- Se debe poder representar aves
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	An error occurred while loading ./spec/ave_spec.rb.
	Failure/Error:
	  describe Ave do
	  # Crea los objetos de la clase Datos con los que se va a trabajar.
		before :each do
		  @ave0 = Ave.new("Pollo", 345, "hembra", 345, "corto", "anisodáctilas", "corredoras")
		  @ave1 = Ave.new("Agaporni", 233, "hembra", 233, "corto", "anisodáctilas", "corredoras")
		  @ave2 = Ave.new("Pavo", 343, "macho", 343, "corto", "anisodáctilas", "corredoras")
		  @ave3 = Ave.new("Pato", 365, "hembra", 365, "ancho y aplanado", "palmeadas", "nadadoras")
		end
		context "Atributos de la clase Ave" do
		  # Instancia de la clase Animal

	NameError:
	  uninitialized constant Ave
	# ./spec/ave_spec.rb:2:in `block in <top (required)>'
	# ./spec/ave_spec.rb:1:in `<top (required)>'

	Finished in 0.00004 seconds (files took 0.18603 seconds to load)
	0 examples, 0 failures, 1 error occurred outside of examples

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
	</code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.00998 seconds (files took 0.13784 seconds to load)
	25 examples, 0 failures
	</code></pre>
- Se debe poder accder al tipo de pico, pata y movilidad del ave
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01576 seconds (files took 0.15074 seconds to load)
	28 examples, 0 failures
	</code></pre>
- Se obtiene una cadena con la información del ave
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada (FAILED - 1)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Failures:

	  1) Granja Ave Atributos de la clase Ave Se obtiene una cadena con la información del ave correctamente formateada
		 Failure/Error: expect(@ave0.to_s).to eq("Identificacion: Pollo\nEdad: 345\nSexo: hembra\nPeso: 345\nTipo de pico: corto\nTipo de pata: anisodáctilas\nTipo de movilidad: corredoras")
		 
		   expected: "Identificacion: Pollo\nEdad: 345\nSexo: hembra\nPeso: 345\nTipo de pico: corto\nTipo de pata: anisodáctilas\nTipo de movilidad: corredoras"
				got: "Identificacion: Pollo\nEdad: 345\nSexo: hembra\nPeso: 345"
		 
		   (compared using ==)
		 
		   Diff:
		   @@ -2,7 +2,4 @@
			Edad: 345
			Sexo: hembra
			Peso: 345
		   -Tipo de pico: corto
		   -Tipo de pata: anisodáctilas
		   -Tipo de movilidad: corredoras
		   
		 # ./spec/ave_spec.rb:37:in `block (4 levels) in <top (required)>'

	Finished in 0.0369 seconds (files took 0.16412 seconds to load)
	29 examples, 1 failure

	Failed examples:

	rspec ./spec/ave_spec.rb:36 # Granja Ave Atributos de la clase Ave Se obtiene una cadena con la información del ave correctamente formateada

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
	</code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01857 seconds (files took 0.13948 seconds to load)
	29 examples, 0 failures
	</code></pre>
- Herencia de la clase Ave
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01815 seconds (files took 0.15527 seconds to load)
	35 examples, 0 failures
	</code></pre>
- Se ha de contar el número de objetos que se instancia de la clase Animal
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal (FAILED - 1)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Failures:

	  1) Granja Animal Problema 2. Se ha de contar el número de objetos que se instancia de la clase Animal
		 Failure/Error: expect(@animal0.total_animals).to eq(36)
		 
		 NoMethodError:
		   undefined method `total_animals' for #<Animal:0x000055a983307578>
		 # ./spec/animal_spec.rb:80:in `block (4 levels) in <top (required)>'

	Finished in 0.01433 seconds (files took 0.16293 seconds to load)
	36 examples, 1 failure

	Failed examples:

	rspec ./spec/animal_spec.rb:79 # Granja Animal Problema 2. Se ha de contar el número de objetos que se instancia de la clase Animal

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
	</code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.02595 seconds (files took 0.14618 seconds to load)
	36 examples, 0 failures
	</code></pre>
- Los animales deben ser comparables por su peso
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso (FAILED - 1)

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Failures:

	  1) Granja Animal Problema 3. Los animales deben ser comparables por su peso
		 Failure/Error: expect(@animal0 > @animal1).to eq(false)
		 
		 NoMethodError:
		   undefined method `>' for #<Animal:0x000055a70b612210>
		 # ./spec/animal_spec.rb:88:in `block (4 levels) in <top (required)>'

	Finished in 0.01541 seconds (files took 0.1597 seconds to load)
	37 examples, 1 failure

	Failed examples:

	rspec ./spec/animal_spec.rb:87 # Granja Animal Problema 3. Los animales deben ser comparables por su peso

	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb failed
	</code></pre>
- Se arregla el fallo que produce la prueba
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01671 seconds (files took 0.16024 seconds to load)
	37 examples, 0 failures
	</code></pre>
- Las aves deben ser comparables por su edad
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)
		Problema 3.
		  Las aves deben ser comparables por su edad

	Granja
	  Datos
		Prueba de instacia de objeto.
		Prueba de la identificación de una Granja.
		Prueba del nombre de una Granja.
		Prueba de la información de una Granja.
		Prueba de la descripción de una Granja.
		Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01391 seconds (files took 0.14098 seconds to load)
	38 examples, 0 failures
	</code></pre>
- Atributos de la clase Datos
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)
		Problema 3.
		  Las aves deben ser comparables por su edad

	Granja
	  Datos
		Atributos de la clase Datos
		  Prueba de instacia de objeto.
		  Prueba de la identificación de una Granja.
		  Prueba del nombre de una Granja.
		  Prueba de la información de una Granja.
		  Prueba de la descripción de una Granja.
		  Prueba de obtener una cadena con la información de una Granja

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.02628 seconds (files took 0.17488 seconds to load)
	38 examples, 0 failures
	</code></pre>
- Herencia de la clase Datos
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)
		Problema 3.
		  Las aves deben ser comparables por su edad

	Granja
	  Datos
		Atributos de la clase Datos
		  Prueba de instacia de objeto.
		  Prueba de la identificación de una Granja.
		  Prueba del nombre de una Granja.
		  Prueba de la información de una Granja.
		  Prueba de la descripción de una Granja.
		  Prueba de obtener una cadena con la información de una Granja
		Herencia de la clase Datos
		  Se espera que una instancia de la clase Datos sea un Datos
		  Se espera que una instancia de la clase Datos sea un objeto (Object)
		  Se espera que una instancia de la clase Datos sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Datos sea una cadena (String)
		  No se espera que una instancia de la clase Datos sea un número (Numeric)

	Granja
	  Funcion
		Prueba de instacia de objeto.
		Prueba de la calidad de vida de una Granja.
		Prueba de los cuidados de una Granja.
		Prueba de la reproduccion de una Granja.
		Prueba de obtener una cadena con la información de la Granja.

	Granja
	  has a version number
	  does something useful

	Finished in 0.01918 seconds (files took 0.15022 seconds to load)
	43 examples, 0 failures
	</code></pre>
- Componentes del módulo Funcion
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)
		Problema 3.
		  Las aves deben ser comparables por su edad

	Granja
	  Datos
		Atributos de la clase Datos
		  Prueba de instacia de objeto.
		  Prueba de la identificación de una Granja.
		  Prueba del nombre de una Granja.
		  Prueba de la información de una Granja.
		  Prueba de la descripción de una Granja.
		  Prueba de obtener una cadena con la información de una Granja
		Herencia de la clase Datos
		  Se espera que una instancia de la clase Datos sea un Datos
		  Se espera que una instancia de la clase Datos sea un objeto (Object)
		  Se espera que una instancia de la clase Datos sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Datos sea una cadena (String)
		  No se espera que una instancia de la clase Datos sea un número (Numeric)

	Granja
	  Funciones
		Componentes del módulo Funcion
		  Existe un módulo para almacenar las funcionalidades
		  Existe una constante para representar las condiciones de vida (campo abierto, establo)
		  Existe un procedimiento para establecer los cuidados de los animales
		  Existe un procedimiento para establecer la reproducción de los animales

	Granja
	  has a version number
	  does something useful

	Finished in 0.01835 seconds (files took 0.1548 seconds to load)
	42 examples, 0 failures
	</code></pre>
- Herencia del módulo Funcion
    <pre><code>
	usuario@ubuntu:~/LPP/granja$ rake
	/home/usuario/.rvm/rubies/ruby-2.7.2/bin/ruby -I/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/lib:/home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-support-3.10.3/lib /home/usuario/.rvm/gems/ruby-2.7.2/gems/rspec-core-3.10.1/exe/rspec --pattern spec/\*\*\{,/\*/\*\*\}/\*_spec.rb

	Granja
	  Animal
		Atributos de la clase Animal
		  Tiene una clase para representar animales
		  Tiene un atributo para identificar al animal
		  Tiene un atributo con la edad del animal en días
		  Tiene un atributo con el sexo del animal
		  Tiene un atributo con el peso del animal en gramos
		  Se obtiene una cadena con la información del animal correctamente formateada
		Herencia de la clase Animal
		  Se espera que una instancia de la clase Animal sea un Animal
		  Se espera que una instancia de la clase Animal sea un objeto (Object)
		  Se espera que una instancia de la clase Animal sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Animal sea una cadena (string)
		  No se espera que una instancia de la clase Animal sea una número (Numeric)
		Problema 2.
		  Se ha de contar el número de objetos que se instancia de la clase Animal
		Problema 3.
		  Los animales deben ser comparables por su peso

	Granja
	  Ave
		Atributos de la clase Ave
		  Tiene una clase para representar aves
		  Se debe poder acceder al tipo de pico del ave
		  Se debe poder acceder al tipo de patas del ave
		  Se debe poder acceder al tipo de movilidad del ave
		  Se obtiene una cadena con la información del ave correctamente formateada
		Herencia de la clase Ave
		  Se espera que una instancia de la clase Ave sea un Ave
		  Se espera que una instancia de la clase Ave sea un Animal
		  Se espera que una instancia de la clase Ave sea un Objeto (Object)
		  Se espera que una instancia de la clase Ave sea un Objeto básico (BasicObject)
		  No se espera que una instancia de la clase Ave sea una cadena (String)
		  No se espera que una instancia de la clase Ave sea un número (Numeric)
		Problema 3.
		  Las aves deben ser comparables por su edad

	Granja
	  Datos
		Atributos de la clase Datos
		  Prueba de instacia de objeto.
		  Prueba de la identificación de una Granja.
		  Prueba del nombre de una Granja.
		  Prueba de la información de una Granja.
		  Prueba de la descripción de una Granja.
		  Prueba de obtener una cadena con la información de una Granja
		Herencia de la clase Datos
		  Se espera que una instancia de la clase Datos sea un Datos
		  Se espera que una instancia de la clase Datos sea un objeto (Object)
		  Se espera que una instancia de la clase Datos sea un objeto básico (BasicObject)
		  No se espera que una instancia de la clase Datos sea una cadena (String)
		  No se espera que una instancia de la clase Datos sea un número (Numeric)

	Granja
	  Funciones
		Componentes del módulo Funcion
		  Existe un módulo para almacenar las funcionalidades
		  Existe una constante para representar las condiciones de vida (campo abierto, establo)
		  Existe un procedimiento para establecer los cuidados de los animales
		  Existe un procedimiento para establecer la reproducción de los animales
		Herencia del módulo Funcion
		  Se espera que sea un objeto de la clase Module
		  Se espera que sea un objeto (Object)
		  Se espera que sea un objeto básico (BasicObject)
		  No se espera que sea una instancia de la clase que representa una cadena (String)
		  No se espera que sea una instancia de la clase que representa un número (Numeric)

	Granja
	  has a version number
	  does something useful

	Finished in 0.02935 seconds (files took 0.1676 seconds to load)
	47 examples, 0 failures
	</code></pre>
>>>>>>> doc
