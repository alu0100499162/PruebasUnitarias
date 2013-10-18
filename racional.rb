# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
   attr_reader :numerador, :denominador
   
   def initialize(numerador,denominador)
      @numerador = numerador
      @denominador = denominador
   end
   def ==(other)
      return @numerador == other.numerador && @denominador == other.denominador if other.instance_of? Fraccion
   false
   end 
   def to_s
      "#{@numerador}/#{@denominador}"
   end

   def suma(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = Fraccion.new((mcm/@denominador) * @numerador, mcm)
      b = Fraccion.new((mcm/other.denominador) * other.numerador, mcm)
      c = Fraccion.new(a.numerador + b.numerador, mcm)
   end

   def resta(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = Fraccion.new((mcm/@denominador) * @numerador, mcm)
      b = Fraccion.new((mcm/other.denominador) * other.numerador, mcm)
      c = Fraccion.new(a.numerador - b.numerador, mcm)
   end

   def multiplicacion(other)
      a = Fraccion.new(@numerador * other.numerador, @denominador * other.denominador)
      max = gcd(a.numerador, a.denominador)
      Fraccion.new(a.numerador/max, a.denominador/max)

   end

   def division(other)
      a = Fraccion.new(@numerador * other.denominador, @denominador * other.numerador)
     max = gcd(a.numerador, a.denominador)
     Fraccion.new(a.numerador/max, a.denominador/max)
   end


end

#a = Fraccion.new(7,20)
#b = Fraccion.new(13,15)

#c = a.suma(b)
#c.to_s

#c = a.resta(b)
#c.to_s

#c = a.multiplicacion(b)
#c.to_s

#c = a.division(b)
#c.to_s

