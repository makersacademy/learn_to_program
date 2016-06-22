def program_log(desc, &block)
  puts "Beginning \"#{desc}\"..."
  res = block.call
  puts "...\"#{desc}\" finished, returning: #{res}"
end

x = 2
	
	program_log "First block" do 
		program_log "Second block" do
			x = x * 2
		end
		program_log "3rd block" do
			x > 4
		end
		x = x * 3
	end