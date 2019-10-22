# frozen_string_literal: true

require 'test/unit'

class Antra
  def Egzas(a)
    if a >= 5 && a < 11
      'Egzaminas išlaikytas'
    elsif a < 5 && a.positive?
      'Egzaminas neišlaikytas'
    else
      'tokio pazymio negali buti'
  end
end
end

puts 'Įveskite egzamino bala'
a = gets.to_i
puts Antra.new.Egzas(a)

class TestAntra < Test::Unit::TestCase
  def test_islaikytas
    assert_equal('Egzaminas išlaikytas', Antra.new.Egzas(5))
  end

  def test_neislaikytas
    assert_equal('Egzaminas neišlaikytas', Antra.new.Egzas(2))
   end

  def test_neratokio
    assert_equal('tokio pazymio negali buti', Antra.new.Egzas(-5))
  end
end
