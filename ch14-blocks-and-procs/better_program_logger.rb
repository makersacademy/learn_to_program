$depth = 0
def log desc, &block
	tabs = '  '*$depth
  puts tabs + "Beginning '#{desc}'..."
  $depth += 1
  returned = block.call
  $depth -1
  puts tabs + "...'#{desc}' finished returning: #{returned}"
end


log "outer block" do
	log "some little block" do
		log "teeny-tiny block" do
			"lots of love"
		end	
		7 * 3 * 2
	end

	log "yet another block" do
		"I love indian food!"
	end
	false
end