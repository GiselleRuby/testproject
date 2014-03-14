require 'pry'

input = "This is a test"
puts input
puts input[-4..-1]

# roman_to_integer

# def roman_check num
#   num.upcase!
#   if num.include?("M") == false &&
#     num.include?("D") == false &&
#     num.include?("C") == false 

#     return "This is not a Roman number!"
#   else
#     return roman_to_integer(num)
#   end
# end

def roman_numbers num
  case num
  when 'CM'
    return 900
  when 'CD'
    return 400
  when 'XC'
    return 90
  when 'XL'
    return 40
  when 'IX'
    return 9
  when 'IV'
    return 4
  else
    return false
  end
end

def roman_number num
  
  case num
  when 'M'
    return 1000
  when 'D'
    return 500
  when 'C'
    return 100
  when 'L'
    return 50
  when 'X'
    return 10
  when 'V'
    return 5
  when 'I'
    return 1
  else
    return 0
  end
end

def roman_to_integer num
  
  integer_num = 0

  # binding.pry
  # puts num

  if num.length > 2
    high_num = num[0..1]

    if roman_numbers(high_num)
      # num = num[-(num.length-2)..-1] 
      # puts "remain #{num}"
      integer_num += roman_numbers(high_num) + roman_to_integer(num[-(num.length-2)..-1])
    else
      high_num = num[0]
      # num = num[-(num.length-1)..-1]
      # puts "remain #{num}"
      integer_num += roman_number(high_num) + roman_to_integer(num[-(num.length-1)..-1])
    end
  elsif num.length == 2
    if roman_numbers(num)
      integer_num += roman_numbers(num)
    else
      # num = num[-(num.length-1)..-1]
      integer_num += roman_number(num[0]) + roman_number(num[1])
    end
  else
    integer_num += roman_number(num)
  end
  
  integer_num
end

puts "Please enter a Roman number."

while true
  roman_num = gets.chomp
  # puts roman_check(roman_num)
  # binding.pry
  if roman_num != 'exit'
    # puts
    puts "=> " + roman_to_integer(roman_num).to_s
    # puts
  else
    break 
  end
end


