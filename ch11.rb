# Shuffle the music list~

require 'pry'
require 'yaml'

def shuffle_lists oldlist, newlist
	
	index = rand(oldlist.count)

	newlist.push( oldlist[index])
	oldlist.delete_at(index)

	if oldlist.count > 0
		shuffle_lists(oldlist,newlist)
	else
		newlist
	end
end

def shuffle_list names
	new_names = []

	shuffle_lists(names,new_names)
end

filename = 'musiclist.txt'
read_string = File.read filename
read_array = YAML::load read_string
read_array = read_array.split' '
# puts read_array

# puts read_array.count
puts '------ original ------'
puts read_array
new_array = shuffle_list(read_array)
puts '------ shuffle ------'
puts new_array

# puts languages.join(', ')

# --- YAML ---
# require 'yaml' # Told you it was easy.
# test_array = ['Give Quiche A Chance',
# 	'Mutants Out!',
# 	'Chameleonic Life-Forms, No Thanks']

# # Here's half of the magic:
# test_string = test_array.to_yaml
# # You see? Kind of like "to_s", and it is in fact a string,
# # but it's a YAML description of "test_array".
# filename = 'RimmerTShirts.txt'
# File.open filename, 'w' do |f|
# 	f.write test_string
# end

# read_string = File.read filename
# # And the other half of the magic:
# read_array = YAML::load read_string
# puts(read_string == test_string)
# puts(read_array == test_array )

# --- double quote ----
# buffy_quote_1 = '\'Kiss rocks\'?
# 				Why would anyone want to kiss...
# 				Oh, wait. I get it.'
# buffy_quote_2 = "'Kiss rocks'?\n" +
# 				"Why would anyone want to kiss...\n" +
# 				"Oh, wait. I get it."
# puts buffy_quote_1
# puts
# puts buffy_quote_2
# puts
# puts(buffy_quote_1 == buffy_quote_2)

# --- rename ---
# Dir.chdir '../test'
# # First we find all of the pictures to be moved.
# pic_names = Dir['*.rb']
# puts 'What would you like to call this batch?'
# batch_name = gets.chomp
# puts
# print "Downloading #{pic_names.length} files: "
# # This will be our counter. We'll start at 1 today,
# # though normally I like to count from 0.
# pic_number = 1
# pic_names.each do |name|
# 	print '.' # This is our "progress bar".
# 	new_name = if pic_number < 10
# 		"#{batch_name}0#{pic_number}.rb"
# 	else
# 		"#{batch_name}#{pic_number}.rb"
# 	end
# 	# Now where were we? Oh, yeah...
# 	File.rename name, new_name
# 	# Finally, we increment the counter.
# 	pic_number = pic_number + 1
# end

# names = Dir["*.rb"]
# puts names.shuffle
