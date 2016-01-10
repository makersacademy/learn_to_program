def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result}"
end

program_log "outer block" do 
	program_log "some little block" do
		2 + 3
	end
	program_log "yet another block" do
		"I like Thai Food"
	end
end
