$depth = ""
def better_log desc, &block

  puts "#{$depth}Beginning \"#{desc}\"..."
  $depth = $depth + " "
  result = block.call
  $depth = $depth.slice(0, $depth.length - 1)
  puts "#{$depth}...\"#{desc}\" finished, returning: #{result}"
end


better_log "outer block" do 
	better_log "some little block" do
		"5"
	end

	better_log "yet another block" do
		"I like Thai food!"
	end
	false
	
end