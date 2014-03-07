names = ['Giselle','Leann','Benedict']
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts
#arrays
languages = ['English', 'Norwegian', 'Ruby']
languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts
puts languages.to_s
puts languages.join(', ')
puts languages.join(';') + '...'
200.times do
	puts []
end
puts
#iterator
# puts 'And let\'s hear it for Java!'
# puts '<crickets chirp in the distance>'
2.times do
	puts '...you can say that again...'
end

inputs = []
while true
	input = gets.chomp
	if input != ''
		inputs.push input
	else
		break
	end	
end

puts inputs.sort
puts

width = 50
tables = ['Table of Contents'.center(width),
'',
'Chapter 1: Getting '.ljust(width/2) + 'Started page 1'.rjust(width/2),
'Chapter 2: Numbers '.ljust(width/2) + 'page 9'.rjust(width/2),
'Chapter 3: Letters '.ljust(width/2) + 'page 13'.rjust(width/2)]

tables.each do |lang|
	puts lang
end



