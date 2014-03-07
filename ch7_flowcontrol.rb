puts 1 > 2
puts 1 < 2

puts 'Hi, what\'s your name?'
name = gets.chomp
puts 'Welcome! ' + name
if name == 'Giselle'
	puts 'What a lovely name!'
end

puts 'Input something in upcase.'
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

count = 99
while count > 0
	puts count.to_s + ' bottles of beer on the wall, ' + count.to_s + ' bottles of beer.'
	count = count - 1

	if count == 0
		puts 'Take one down and pass it around, no more bottles of beer on the wall.'
	else
		puts 'Take one down and pass it around, ' + count.to_s + ' bottles of beer on the wall.'
	end
	puts ''
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
puts ''
puts ''

leave = 0
puts 'Grandma'
while true
	answer = gets.chomp
	loudly = answer.upcase

	if answer == 'BYE'
		leave = leave + 1
		if leave == 3
			break
		end
	elsif answer == loudly
		leave = 0
		randyear = rand 20
		randyear = randyear + 1930
		puts 'NO, NOT SINCE ' + randyear.to_s + '!'
	elsif 
		leave = 0
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end

puts ''
puts 'please inpue two year'
puts '1).'
firstyear = gets.chomp
puts '2).'
secondyear = gets.chomp
puts ''

year = firstyear.to_i
while year < secondyear.to_i + 1
	if year % 4 == 0 
		if year % 100 != 0 
			puts year		
		elsif year % 400 == 0
			puts year		
		end
	end	
	year = year + 1
end
