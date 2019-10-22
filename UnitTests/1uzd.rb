# frozen_string_literal: true

require 'test/unit'

class Pirma
  def masyvuks(a, b, c)
    masyvas = [a, b, c]

    masyvas.min
  end
end
print 'Maziausias elementas:'
puts Pirma.new.masyvuks(1, 2, 3)

class TestPirma < Test::Unit::TestCase
  def test_simple
    assert_equal(69, Pirma.new.masyvuks(69, 420, 852))
  end
end
