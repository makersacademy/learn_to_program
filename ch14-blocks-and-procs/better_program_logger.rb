
$indent = 0

def log desc, &block
	puts "	"*$indent + "Beginning \"#{desc}\"..."
	$indent += 1
	output = block.call
	$indent -= 1
	puts "	"*$indent + "...\"#{desc}\" finished, returning: #{output}"
end

log "outer block" do
	log "inner block" do
		log "tiny inner-inner block" do
			"BEEP!"
		end
		25*6
	end
	log "another inner block" do
		"Kippers for breakfast Aunt Helga?"
	end
	"I'm spent."
end