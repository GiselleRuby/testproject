def sort some_array # This "wraps" recursive_sort.
	recursive_sort(some_array, [])
end

def recursive_sort unsorted_array, sorted_array
	
	if unsorted_array.count == 0
		sorted_array
	else
		min_index = 0
		min_string = unsorted_array[0]

    count = 0
		unsorted_array.each do |e|
      if e.downcase < min_string.downcase
        min_string = e
        min_index = count
      end
      count += 1
		end

    sorted_array.push(min_string)
    unsorted_array.delete_at(min_index)

    recursive_sort(unsorted_array,sorted_array)
	end
end

puts "Please enter a list, end with Enter."

myarray = []
while true
	input = gets.chomp
	if input != ""
		myarray.push(input) 
	else
		break
	end
end

sort_array = sort(myarray)

puts
puts "sort your array =>"
puts sort_array.join(",")