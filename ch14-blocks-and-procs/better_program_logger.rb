$block_indent = 0

def better_log(desc, &block)
  puts " "*$block_indent + "Beginning \"#{desc}\"..."
  $block_indent += 1
  result = block.call
  $block_indent -= 1
  puts " "*$block_indent + "...\"#{desc}\" finished, returning: #{result}"
end 

better_log "outer block" do 
	better_log "some little block" do
		better_log "teeny-tiny block" do
			"lots of love"
		end
		42
	end

	better_log "yet another block" do
		"I love Indian food!"
	end

 true
end
	