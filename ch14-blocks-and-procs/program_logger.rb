def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: " + result.to_s 
end

program_log "outer block" do
	program_log "another block" do 
		"Howdy. I'm the inner block."
	end

	program_log "yet another block" do
		(1+1).to_s
	end
	'0' == 0
end