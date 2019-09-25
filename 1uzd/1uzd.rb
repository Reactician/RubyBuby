num = []

while num.length < 3
  puts "iveskite #{num.length+1}-aji skaiciu"
  i = gets.chomp

  num << i
end
puts "maziausias skaicius yra: " + num.min