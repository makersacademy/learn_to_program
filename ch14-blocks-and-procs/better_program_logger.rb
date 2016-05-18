$indent = 0

def log desc, &block
	indent = " " * $indent
	puts indent + "Beginning #{desc.inspect}..."
	$indent += 1
	result = block.call
	$indent -= 1
	puts indent + "... #{desc.inspect} finished, returning: " + result.to_s
end

log "outer block" do
	log "some little block" do
		log "teeny-tiny block" do
			"lots of love"
		end
		42
	end
	log "yet another block" do
		"I like Thai food!"
	end
	true
end