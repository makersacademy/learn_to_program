$nest = 0 #nest will track how many times we should indent our putsing, which is the times that log calls another block
def better_log block_description, &block
	
	prefix = ' '*$nest
	puts prefix + "Beginning #{block_description.inspect}..."
	$nest += 1
	l = block.call
	$nest -= 1
	puts prefix + "...#{block_description.inspect} finished, returning: #{l}"
end

better_log "outer block" do 
	better_log "some little block" do		
		better_log "teeny-tiny block" do
			'lots of love'
		end
		42
	end 
	better_log "yet another block" do 
		'I love Indian food!'
	end
'0' == 1
end


