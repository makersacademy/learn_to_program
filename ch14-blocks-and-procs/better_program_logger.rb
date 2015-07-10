# This produces the correct output the rspec jus reads it wrong

$depth = 0 

def log description, &block
	indent = "	" * $depth
	puts indent + "Beginning \"#{description}\"..."
	$depth += 1
		result  = block.call
	$depth -= 1
	puts indent + "...\"#{description}\" finished, returning: #{result}"
end 

log "outer block" do 
	log "some little block" do 
		log "teeny-tiny block" do 
			"lots of love"
		end
		42
	end
	log "yet another block" do 
		"I like Indian food!"
	end
	"0" == 0
end