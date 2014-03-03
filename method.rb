puts self

ver1 = 'This is first line.'
ver2 = 'I am not pretty sure about it.'
puts ver1
puts ver2
puts ver1.reverse
puts ver2.reverse
puts '***'
puts 'The length of ver1 is ' + ver1.length.to_s
puts 'The length of ver2 is ' + ver2.length.to_s
puts '***'
ver3 = '123 45 678'
puts 'The length of ver3 is ' + ver3.length.to_s

center_width = 50
puts 'Hi'.center(center_width)
puts 'My name is Giselle.'.center(center_width)
puts 'I still don\'t know.'.center(center_width)
puts 'If I want someone in my life.'.center(center_width)

puts 'Hi'.center(center_width)
puts 'My name is Giselle.'.ljust(center_width)
puts 'I still don\'t know.'.rjust(center_width)
puts 'If I want someone'.ljust(center_width/2) + ' in my life.'.rjust(center_width/2)

puts 'What\'s up?'
gets
puts 'Your\'re fired!'

puts 12**2
puts 25**0.5