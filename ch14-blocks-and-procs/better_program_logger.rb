

$nest = 0 #nest will track how many times we should indent our putsing, which is the times that log calls another block
def log block_description, &block
	
	prefix = '	'*$nest
	puts prefix + "Beginning #{block_description.inspect}.."
	$nest += 1
	l = block.call
	$nest -= 1
	puts prefix + "#{block_description.inspect}.. finished, returning: #{l}"
end

log "outer block" do 
	log "some little block" do		
		log "teeny-tiny block" do
			#$nest = 3
			'lots of love'
		end
		5
	end 
	log "yet another block" do 
		'I like Thai food!'
	end
'0' == 0
end


