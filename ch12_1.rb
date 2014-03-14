
# How old are you
def count_age seconds
	minutes = seconds / 60
	hours = minutes / 60
	days = hours / 24
	age = days / 365
	age.to_i
end

puts "Hi, please tell me what's your birthday? (yyyy/mm/dd)"

while true
	birthday = gets.chomp
	birthdays = birthday.split('/')

	if birthdays.count == 3
		break
	else
		puts "Please enter with right format! like 2014/3/14 "
	end
end

# puts birthdays
birthday_time = Time.local(birthdays[0],birthdays[1],birthdays[2])
age = Time.new - birthday_time
# puts Time.new
# puts Time.at(age)
puts "You are " + count_age(age).to_s + " years old."