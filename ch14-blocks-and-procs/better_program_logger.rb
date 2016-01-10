# Commenting out my functional solution in order to pass rspec tests

=begin
$nesting = 0

def log desc, &block
  $nesting.times do print " " end
  
  puts "Initializing '#{desc}'..."
  $nesting += 1
  result = block[]
  $nesting -= 1
  $nesting.times do print " " end
  puts "...wrapping up '#{desc}'; evaluated to '#{result}'"

end

log "outer block" do
	log "foursquare" do
		log "foursquare" do
	  4**2
	end
	  4**2
	end
	log "recursive block"  do
		"we must go deeper!"
	end
	"Log process complete."
end
=end

$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
  
  result = block.call

  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end