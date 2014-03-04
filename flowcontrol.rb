puts 1 > 2
puts 1 < 2

puts 'Hi, what\'s your name?'
name = gets.chomp
puts 'Welcome! ' + name
if name == 'Giselle'
	puts 'What a lovely name!'
end

while true
	something = gets.chomp
	loudly = something.upcase
	if something == 'BYE'
		break
	elsif something == loudly
		puts 'RIGHT!'
		break
	else
		puts 'SPEAK UP!'
	end
end