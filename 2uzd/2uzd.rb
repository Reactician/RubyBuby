# frozen_string_literal: true

puts 'Įveskite egzamino bala'
a = gets.to_i

if a >= 5 && a < 11
  puts 'Egzaminas išlaikytas'
elsif a < 5 && a.positive?
  puts 'Egzaminas neišlaikytas'
else
  puts 'tokio pazymio negali buti'
end
