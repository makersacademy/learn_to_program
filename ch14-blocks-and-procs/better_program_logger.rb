$nesting_depth = 0

def better_log desc, &block
  puts "#{' '*$nesting_depth}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  r = block.call
  $nesting_depth -= 1
  puts "#{' '*$nesting_depth}...\"#{desc}\" finished, returning: #{r}"
end

better_log "outer block" do
	better_log "some little block" do
		better_log "an even tinier block" do
			"lots of love"
		end
		5
	end
	better_log "yet another block" do
		"I like thai food"
	end
	false
end