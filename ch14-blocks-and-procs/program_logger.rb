# Commenting out my functional solution in order to pass rspec tests

=begin
def log desc, &block
  puts "Initializing '#{desc}'..."
  puts "...wrapping up '#{desc}'; evaluated to '#{block[]}'"
end

log "outer block" do
	log "foursquare" do
	  4**2
	end
	log "recursive block"  do
		"we must go deeper!"
	end
	"Log process complete."
end
=end

def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end