$logger_depth = 0

def log desc, &block
  prefix = '  '*$logger_depth

  puts prefix + "I'm about to call" + desc + " now..."
  
  $logger_depth = $logger_depth + 1
  result = block.call
  
  $logger_depth = $logger_depth - 1
  puts prefix + "..." + desc + " finished, returning: " + result.to_s
 
  puts "This line runs whenever the method ends." 
  # I added this because I don't get the way the method works. 
end

log "block1" do
  log " a block within a block" do
	2 + 2
  end

  log "another tiny block" do
  	"This program is weird"
  end

  "0" == 0
end
