puts'Įveskite tris trikampio kraštines ir sužinosite:'
puts'-Ar jis egzistuoja'
puts'-Jo tipą'
puts'-Plotą'

puts'Įveskite 1-ają kraštinę'
a=gets.to_i
puts'Įveskite 2-ają kraštinę'
b=gets.to_i
puts'Įveskite 3-ają kraštinę'
c=gets.to_i

if (a+b>c && a+c>b && b+c>a)
	puts'Trikampis egzistuoja'
	if(a==b && b==c)
		puts'- Jis yra lygiašonis'
	
	elsif (a==b && b!=c)||(a==c && c!=b)||(b==c&& c!=a)
		puts'- Jis yra lygiašonis'
	elsif (a!=b && a!=c && c!=b)
		puts'- Jis yra įvairiakraštis'
	end
	p=(a+b+c)/2
	s=(p*(p-a)*(p-b)*(p-c))
	puts ' - Plotas yra #{Math.sqrt(s).round(1)}'
	else
		puts 'Toks trikampis neegzistuoja'
end