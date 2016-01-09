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

def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end