# frozen_string_literal: true

require 'test/unit'
# Class for 3rd task
class Trecia
  def trikampis(aside, bside, cside)
    if aside + bside > cside && aside + cside > bside && bside + cside > aside
      if aside == bside && bside == cside
        'egzistuojantis lygiakraštis'
      elsif (aside == bside && bside != cside) || (aside == cside && cside != bside) || (bside == cside && cside != aside)
        'egzistuojantis lygiašonis'
      elsif aside != bside && aside != cside && cside != bv
        'egzistuojantis įvairiakraštis'
      end
    else
      'Toks trikampis neegzistuoja'
    end
  end

  def plotas(aside, bside, cside)
    plotas = (aside + bside + cside) / 2
    ats = (plotas * (plotas - aside) * (plotas - bside) * (plotas - cside))
    "- Plotas yra #{Math.sqrt(ats).round(1)}"
  end
end

puts'Įveskite tris trikampio kraštines ir sužinosite:'
puts'-Ar jis egzistuoja'
puts'-Jo tipą'
puts'-Plotą'

puts'Įveskite 1-ają kraštinę'
aside = gets.to_i
puts 'Įveskite 2-ają kraštinę'
bside = gets.to_i
puts 'Įveskite 3-ają kraštinę'
cside = gets.to_i
puts Trecia.new.Trikampis(aside, bside, cside)
if Trecia.new.Trikampis(aside, bside, cside) != 'Toks trikampis neegzistuoja'
  puts Trecia.new.Plotas(aside, bside, cside)
end
# Class for test
class TestTrecia < Test::Unit::TestCase
  def test_lygiakrastis
    assert_equal('egzistuojantis lygiakraštis', Trecia.new.Trikampis(5, 5, 5))
  end

  def test_lygiasonis
    assert_equal('egzistuojantis lygiašonis', Trecia.new.Trikampis(5, 4, 5))
  end

  def test_ivairiakrastis
    assert_equal('egzistuojantis įvairiakraštis', Trecia.new.Trikampis(5, 4, 6))
  end

  def test_neegzistuoja
    assert_equal('Toks trikampis neegzistuoja', Trecia.new.Trikampis(1, 1, 6))
  end

  def test_plotas
    assert_equal('- Plotas yra 7.5', Trecia.new.Plotas(5, 5, 5))
  end
end
