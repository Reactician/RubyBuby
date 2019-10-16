# frozen_string_literal: true

masyvas = []

while masyvas.length < 3
  puts "iveskite #{masyvas.length + 1}-aji skaiciu"
  i = gets.chomp

  masyvas << i
end
puts 'maziausias skaicius yra:' + masyvas.min
