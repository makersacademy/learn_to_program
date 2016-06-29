def better_log(desc, &block)

indent = " " * $nesting_level

  puts "#{indent}Beginning \"#{desc}\"..."
  $nesting_level += 1
  res = block.call
  puts "#{indent}...\"#{desc}\" finished, returning: #{res}"
  $nesting_level -= 1
end

x = 2
$nesting_level = 0
	
	better_log "First block" do 
		better_log "Second block" do
			better_log "3rd block" do
				x = x * 3
			end
			x = x * 2
		end
		better_log "4th block" do
			"Blue".reverse
		end
		x = x * 4
	end