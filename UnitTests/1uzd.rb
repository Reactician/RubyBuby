# frozen_string_literal: true

require 'test/unit'
# CLass for 1st program
class Pirma
  def masyvuks(pirmasskaicius, antrasskaicius, treciasskaicius)
    masyvas = [pirmasskaicius, antrasskaicius, treciasskaicius]

    masyvas.min
  end
end
print 'Maziausias elementas:'
puts Pirma.new.masyvuks(1, 2, 3)
# Test class for 1st program
class TestPirma < Test::Unit::TestCase
  def test_simple
    assert_equal(69, Pirma.new.masyvuks(69, 420, 852))
  end
end
