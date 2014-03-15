require 'pry'

@count = 0

def get_log block_name,&block
	output = "---- #{block_name} is beginning ----"
	puts output.rjust(output.length+4*@count)
	@count += 1
	# binding.pry

	return_value = block.call
	@count -= 1
	output = "---- #{block_name} finished, returning #{return_value} ----"
	puts output.rjust(output.length+4*@count)
end

get_log "the outside block" do
	get_log "the first block" do 
		# puts "inside the block of XXX"
		"TTTTEEEESSSSTTT"
	end

	get_log "the second block" do 
		# puts "inside the block of OOO"
		300
	end
	"EEENNNDD"
end
