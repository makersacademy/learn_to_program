$russian_doll_number = 0

def better_log desc, &block 
	indent = " " * $russian_doll_number
  	puts indent + "Beginning \"#{desc}\"..."
  	$russian_doll_number += 1
  	result = block.call
  	$russian_doll_number -= 1
  	puts indent + "...\"#{desc}\" finished, returning: #{result}"
end

better_log "outer block" do   #THIS IS BLOCK 1 
	better_log "some little block" do #This is a block within block 1, let's call it block 1A
		better_log "teeny-tiny block" do 
			"lots of love"
		end
		42
	end
	better_log "yet another block" do #This is another block within block 1, lets call it block 1B
		"I love Indian food!"
	end
end


