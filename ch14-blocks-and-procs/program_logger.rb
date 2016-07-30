
def log block_description, &block
	puts "Beginning #{block_description.inspect}.."
	l = block.call
	puts "#{block_description.inspect}.. finished, returning: #{l}"
end

log "outer block" do 
	log "some little block" do
		5
	end 

	log "yet another block" do 
		'I like Thai food!'
	end
'0' == 0
end
