# frozen_string_literal: true

require 'test/unit'
# Class for 2nd program
class Antra
  def egzas(egzobalas)
    if egzobalas >= 5 && egzobalas < 11
      'Egzaminas išlaikytas'
    elsif egzobalas < 5 && egzobalas.positive?
      'Egzaminas neišlaikytas'
    else
      'tokio pazymio negali buti'
    end
  end
end

puts 'Įveskite egzamino bala'
egzobalas = gets.to_i
puts Antra.new.egzas(egzobalas)
# Test for 2nd program
class TestAntra < Test::Unit::TestCase
  def test_islaikytas
    assert_equal('Egzaminas išlaikytas', Antra.new.egzas(5))
  end

  def test_neislaikytas
    assert_equal('Egzaminas neišlaikytas', Antra.new.egzas(2))
  end

  def test_neratokio
    assert_equal('tokio pazymio negali buti', Antra.new.egzas(-5))
  end
end
