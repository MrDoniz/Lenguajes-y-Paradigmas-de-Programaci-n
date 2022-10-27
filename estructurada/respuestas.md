## ¿Qué diferencia hay entre "\t\n" y ’\t\n’?
Entre comillas doble se ejecuta lo que hay en el interior, utilizando comillas simple se utiliza tal cual aparece. Si se imrpime por pantalla "\t\n" realizaría un tabulador y salto de línea en cambio, ’\t\n’ imprimiría \t\n por pantalla.

## ¿Cómo funciona %q? ¿Qué es %q{hello world\n}? ¿Qué es %q{’a’ ’b’ ’c’}?
%q se utiliza para cadenas no interpoladas exectop \, [ y ].
hello world\n
’a’ ’b’ ’c’

## ¿Cómo funciona %Q? ¿Qué es %Q{hello world\n}? ¿Qué es %Q{"a" "b" "c"}?
%Q se utiliza para cadenas interpoladas.
hello world
’a’ ’b’ ’c’

## ¿Qué queda en c?
"--4--\n--2--\n"

## ¿Qué queda en c?
"--\#{a}--\n--\#{b}--\n"

## s = "hello". ¿Cuál es el valor de las siguientes expresiones?
s[0,2]  => "he" 
s[-1,1] => "o" 
s[0,10] => "hello" 

## ¿Qué queda en g?
g => "hello world"

## ¿Qué queda en e?
e => "..." 

## ¿Cuál es el resultado?
"#{a=a+1} "*3 => "2 2 2 " 

## ¿Qué es esto? %w[this is a test]
%W y %w permite crear una matriz de cadenas sin usar comillas ni comas.
%w[this is a test] => ["this", "is", "a", "test"] 

## ¿Qué es esto? %w[\t \n]
Se utiliza para elementos de matriz entre comillas simples, los elementos entre comillas simples no están sujetos a la sustitución de expresiones ni a las secuencias de escape.
%w[\t \n] => ["\\t", "\\n"] 

## ¿Qué es esto? %W[\t \n]
Se utiliza para elementos de matriz entre comillas dobles. 
%W[\t \n] => ["\t", "\n"]

## ¿Qué contiene nils? nils = Array.new(3)
Contiene una matriz de 3 nil.
nils = Array.new(3) => [nil, nil, nil]

## ¿Qué contiene zeros? zeros = Array.new(3, 0)
Contiene una matriz de 3 0.
zeros = Array.new(3, 0) => [0, 0, 0]

## ¿Qué queda en b?
b = Array.new(x) => [[1, 2], [3, 4]]

## ¿Qué queda en c?
c = Array.new(3) { |i| 2*i } => [0, 2, 4]

## ¿Cuál es el resultado de cada una de estas operaciones?
   a[1,1] => ["b"]
  a[-2,2] => ["d", "e"] 
  a[0..2] => ["a", "b", "c"] 
 a[0...1] => ["a"] 
a[-2..-1] => ["d", "e"] 

## ¿Cuál es el resultado de cada una de estas operaciones?
a => ["A", "B", "c", "d", "e"]
a => ["A", "B", "C", "D", "E"]
a => [1, 2, 3, "A", "B", "C", "D", "E"]
a => [3, "A", "B", "C", "D", "E"]
a => [3, "A", "B", "C", "D", "Z"]
a => [3, "A", "B", "C", nil]

## ¿Cuál es el resultado de cada una de estas operaciones?
a = (1...4).to_a => [1, 2, 3]
  a = a + [4, 5] => [1, 2, 3, 4, 5]
a += [[6, 7, 8]] => [1, 2, 3, 4, 5, [6, 7, 8]]
       a = a + 9 =>

## ¿Cuál es el resultado de cada una de estas operaciones?
x = %w{a b c b a} => ["a", "b", "c", "b", "a"]
x = x - %w{b c d} => ["a", "a"]

## ¿Cuál es el resultado de cada una de estas operaciones?
z = [0]*8 => [0, 0, 0, 0, 0, 0, 0, 0] 

## ¿Cuál es el resultado de cada una de estas operaciones?
a << 1          => [1]
a << 2 << 3     => [1, 2, 3] 
a << [4, 5, 6]  => [1, 2, 3, [4, 5, 6]] 
a.concat [7, 8] => [1, 2, 3, [4, 5, 6], 7, 8] 

## ¿Cuál es el resultado de cada una de estas operaciones?
c = a | b => [1, 2, 3, 4, 5] 
d = b | a => [5, 4, 3, 2, 1]
e = a & b => [2, 3, 4] 
f = b & a => [4, 3, 2] 
## ¿Qué resultados dan las siguientes operaciones?
a.to_a => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 
b.to_a => [1, 2, 3, 4, 5, 6, 7, 8, 9] 
b.include? 10 => false
b.include? 8 => true 
b.step(2) {|x| print "#{x} " } 1 3 5 7 9  => 1...10 
1..3.to_a =>

## ¿Qué resultados dan las siguientes operaciones?
r.member? 50    => true 
r.include? 99.9 => true 
r.member? 99.9  => true

## ¿Qué resultados dan las siguientes operaciones?
true.class  => TrueClass
false.class => FalseClass 
puts "hello" if 0   => hello => nil
puts "hello" if nil => nil 
puts "hello" if ""  => hello => nil 

## ¿Qué resultados dan las siguientes operaciones?
x == 'sym'        => false
x == :sym         => true
z.class           => Symbol 
x == 'sym'.to_sym => true
x.to_s == 'sym'   => true 

## ¿Qué resultados se dan?
t = s      => "Ruby" 
t[-1] = "" => "" 
print s    => Rub => nil 
t = "Java" => "Java"
print s, t => RubJava => nil 

## ¿Cuál es el resultado?
"%d %s" % [3, "rubies"] => "3 rubies

## ¿Cuáles son los resultados?
x, y = 4, 5       => [4, 5]
z = x > y ? x : y => 5 
x,y,z = [1,2,3]   => [1, 2, 3]

## ¿Qué resultados dan las siguientes operaciones?
x.keys   => [:a, :b] 
x.values => [1, 2] 
x => {:a=>1, :b=>2, :c=>3} 
x => {:a=>1, :b=>2, :c=>3} 
x => {:b=>2, :c=>3} 
x.delete_if { |k,v| v % 2 == 0 } => {:a=>1} 
x => {:a=>1} 

## ¿Qué hace la siguiente sentencia?
Crea un objeto hash apatir del método new de la clase inicializado con el parámetro 0, este devuelve el valor por defecto.
counts = Hash.new(0) => {}
counts = {}          => {}

## ¿Qué retorna esta expresión regular?
'hello world, hello LPP'.scan /\w+/ => ["hello", "world", "hello", "LPP"] 