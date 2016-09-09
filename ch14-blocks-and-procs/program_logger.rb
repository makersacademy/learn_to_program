def log desc, &block
  puts "Beginning '#{desc}'..."
  returned = block.call
  puts "...'#{desc}' finished returning: #{returned}"
end

log "outer block" do 
	log "some little block" do	
			5
		end
	log "teeny-tiny block" do
			"I like Thai food!"
		end	
	false
end