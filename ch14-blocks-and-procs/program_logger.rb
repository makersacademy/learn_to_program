def program_log desc, &block
	puts "Beginning #{desc.inspect}..."
	result = block.call
	puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log "outer block" do 
	program_log "inner block" do
		"Hello"
	end

	program_log "second inner block" do
		"Bye"
	end

	true
end