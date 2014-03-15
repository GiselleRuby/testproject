
class Orange_tree
	def initialize height
		@height = height
		@oranges = 0
		@age = 1
    @live = true
	end
  
  def age?
    if @live
      puts "The orange tree is #{@age} years old."
    else
      puts "The orange tree is dead"      
    end
  end

	def height?
		puts "The orange tree is #{@height} height."
	end

	def one_year_passes
    @age += 1

    if @age > 10
      @live = false
    end

    if @live
  		@height = @height + 15
  		if @age >= 5 
  			@oranges = @age - 3
      else
        @oranges = 0
  		end
    else
      @oranges = 0      
    end

    age?
    height?
    count_the_oranges

	end

	def count_the_oranges
		puts "There are #{@oranges} oranges on the tree."
	end

	def pick_an_orange
		if @oranges > 0
		  @oranges -= 1
			puts "You get an orange and it's delicious! Still have #{@oranges} oranges on the tree."		
    else
      puts "There is no orange on the tree!"
		end
	end
end

tree = Orange_tree.new 10

while true
  puts "choose the action: 1)one year passes. 2)pick orange. 3)exit."
  input = gets.chomp
  
  case input
  when '1'
    tree.one_year_passes
  when '2'
    tree.pick_an_orange
  when '3'
    break
  else
    next
  end 
end

