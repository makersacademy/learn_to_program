def log desc, &block
  puts 'Beginning "'  + "#{desc}" + '"...'
  result = block.call
  puts '..."' + "#{desc}" + " finished, returning:" + "#{result}"
end

log "outer block" do 
	log "some little block" do
		1**1 + 2**2
	end
	
end

log "yet another block" do
	"yet another block" 
end