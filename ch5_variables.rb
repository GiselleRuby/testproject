var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i
puts '****'
puts '15'.to_f
puts '99.99'.to_f
puts '99.99'.to_i
puts '****'
puts '5 is my favorite!'.to_i
puts 'What is 5 means'.to_i
puts 'no number'.to_f
puts '****'
puts 'string'.to_s

# puts gets
# gets

puts 'Hi, what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '.'

puts 'What\'s your favorite number?'
num = gets
num = num.to_i + 1
puts num.to_s + ' might be better.'
# puts num
