def log desc, &block
  # your code here
  puts "Beginning \"#{desc}\"..."
  retval=block.call
  puts "...\"#{desc}\" finished, returning: #{retval}"
end

log "outer block" do
	log "some little block" do
		"5"
	end
    log "yet another block" do
	    "I like thai food"
    end
	"false"
end
