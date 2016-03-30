def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  r = block.call
  puts "...\"#{desc}\" finished, returning: #{r}"
end

program_log "outer block" do
	program_log "some little block" do
		5
	end
	program_log "yet another block" do
		"I like thai food"
	end
	false
end
