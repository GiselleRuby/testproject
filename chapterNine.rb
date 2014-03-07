#old school Roman numerals

def old_school_roman number
	
	number_string = ''

	# M = 1000
	write = number / 1000
	left = number % 1000

	if write > 0
		return number_string + 'M'*write + old_school_roman(left)
	end

	# D = 500 
	write = number / 500
	left = number % 500

	if write > 0
		return number_string + 'D'*write + old_school_roman(left)
	end

	# C = 100 
	write = number / 100
	left = number % 100

	if write > 0
		return number_string + 'C'*write + old_school_roman(left)
	end

	# L = 50
	write = number / 50
	left = number % 50

	if write > 0
		return number_string + 'L'*write + old_school_roman(left)
	end

	# X = 10 
	write = number / 10
	left = number % 10

	if write > 0
		return number_string + 'X'*write + old_school_roman(left)
	end

	# V = 5
	write = number / 5
	left = number % 5

	if write > 0
		return number_string + 'V'*write + old_school_roman(left)
	end

	# I = 1 
	return number_string + 'I'*number

	# number_string
end

puts 'old school Roman number'
while true
	number = gets.chomp
	if number == 'exit'
		break
	else
		puts old_school_roman number.to_i
	end
end

#modern Roman numerals 
def old_school_roman number
	
	number_string = ''

	# M = 1000
	write = number / 1000
	left = number % 1000

	if write > 0
		return number_string + 'M'*write + old_school_roman(left)
	end

	# D = 500 
	write = number / 500
	left = number % 500

	if write > 0
		return number_string + 'D' + old_school_roman(left)
	end

	# C = 100 
	write = number / 100
	left = number % 100

	if write > 0
		if write == 4
			return number_string + 'CD'+ old_school_roman(left)
		else
			return number_string + 'C'*write + old_school_roman(left)			
		end
	end

	# L = 50 
	write = number / 50
	left = number % 50

	if write > 0
		return number_string + 'L' + old_school_roman(left)
	end

	# X = 10 	
	write = number / 10
	left = number % 10

	if write > 0
		if write == 4
			return number_string + 'XL' + old_school_roman(left)
		else
			return number_string + 'X'*write + old_school_roman(left)
		end
	end

	# V = 5
	write = number / 5
	left = number % 5

	if write > 0		
		return number_string + 'V' + old_school_roman(left)
	end

	# I = 1 
	if number == 4
		return number_string + 'IV'
	else
		return number_string + 'I'*number	
	end

	# number_string
end

puts 'modern Roman number'
# while true
# 	number = gets.chomp
# 	if number == 'exit'
# 		break
# 	else
# 		puts old_school_roman number.to_i
# 	end
# end

roman_number = []
i = 1
width = 15
100.times do
	number_string = ''
	10.times do
		number_string = number_string + (old_school_roman i).ljust(width)
		i = i + 1
	end
	roman_number.push number_string
	# roman_number.push (old_school_roman i).ljust(width) + (old_school_roman i+1).ljust(width) + (old_school_roman i+2).ljust(width) + old_school_roman(i+3).ljust(width) + old_school_roman(i+4).ljust(width) + old_school_roman(i+5).ljust(width) + old_school_roman(i+6).ljust(width) + old_school_roman(i+7).ljust(width) + old_school_roman(i+8).ljust(width) + old_school_roman(i+9).ljust(width)
	# roman_number.push (old_school_roman i).ljust(width)
end

i = 1
roman_number.each do |num|
	puts num
end
