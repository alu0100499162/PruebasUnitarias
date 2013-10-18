# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

   def setup
      @a = Fraccion.new(7,20)
      @b = Fraccion.new(13,15)
   end

   def test_sumayresta
      assert_equal(Fraccion.new(73,60), @a.suma(@b))
      assert_equal(Fraccion.new(-31,60), @a.resta(@b))
   end

   def test_multydiv
      assert_equal(Fraccion.new(91,300), @a.multiplicacion(@b))
      assert_equal(Fraccion.new(21,52), @a.division(@b))
   end
end
