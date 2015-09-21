def log desc, &block
  puts "Beginning \"#{desc}\"..."
  output = block.call
  puts "...\"#{desc}\" finished, returning: #{output}"
end

log "outer block" do
	log "inner block" do
		25*6
	end
	log "another inner block" do
		"Kippers for breakfast Aunt Helga?"
	end
	"I'm spent."
end