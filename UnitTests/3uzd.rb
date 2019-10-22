# frozen_string_literal: true

require 'test/unit'

class Trecia
  def Trikampis(a, b, c)
    if a + b > c && a + c > b && b + c > a
      if a == b && b == c
        '- Trikampis egzistuoja ir jis yra lygiakraštis'

      elsif (a == b && b != c) || (a == c && c != b) || (b == c && c != a)
        '- Trikampis egzistuoja ir jis yra lygiašonis'
      elsif a != b && a != c && c != b
        '- Trikampis egzistuojais ir jis yra įvairiakraštis'
      end

    else
      'Toks trikampis neegzistuoja'
    end
end

  def Plotas(a, b, c)
    p = (a + b + c) / 2
    s = (p * (p - a) * (p - b) * (p - c))
    "- Plotas yra #{Math.sqrt(s).round(1)}"
  end
end

puts'Įveskite tris trikampio kraštines ir sužinosite:'
puts'-Ar jis egzistuoja'
puts'-Jo tipą'
puts'-Plotą'

puts'Įveskite 1-ają kraštinę'
a = gets.to_i
puts 'Įveskite 2-ają kraštinę'
b = gets.to_i
puts 'Įveskite 3-ają kraštinę'
c = gets.to_i
puts Trecia.new.Trikampis(a, b, c)
if(Trecia.new.Trikampis(a, b, c)!='Toks trikampis neegzistuoja')
puts Trecia.new.Plotas(a, b, c)
end
class TestTrecia < Test::Unit::TestCase
  def test_lygiakrastis
    assert_equal('- Trikampis egzistuoja ir jis yra lygiakraštis', Trecia.new.Trikampis(5, 5, 5))
  end

  def test_lygiasonis
    assert_equal('- Trikampis egzistuoja ir jis yra lygiašonis', Trecia.new.Trikampis(5, 4, 5))
   end

  def test_ivairiakrastis
    assert_equal('- Trikampis egzistuojais ir jis yra įvairiakraštis', Trecia.new.Trikampis(5, 4, 6))
  end

  def test_neegzistuoja
    assert_equal('Toks trikampis neegzistuoja', Trecia.new.Trikampis(1, 1, 6))
 end

  def test_plotas
    assert_equal('- Plotas yra 7.5', Trecia.new.Plotas(5, 5, 5))
 end
end
