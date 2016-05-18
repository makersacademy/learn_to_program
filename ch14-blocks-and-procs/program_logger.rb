def log desc, &block
	puts "Beginning #{desc.inspect}..."
	result = block.call
	puts "... #{desc.inspect} finished, returning: " + result.to_s
end

log "outer block" do
	log "some little block" do	
		5
	end
	log "yet another block" do
		"I like Thai food!"
	end
	false
end