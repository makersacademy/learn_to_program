def log desc, &block
  puts "I'm about to call" + desc + " now..."
  result = block.call
  puts "..." + desc + " finished, returning: " + result.to_s
  puts "This line runs whenever the method ends." 
  # I added this line because I don't get the way the method works. 
end

log "block1" do
  log "a block within a block" do
	2 + 2
  end

  log "another tiny block" do
  	"This program is weird"
  end

  "0" == 0
end

def log desc, &block
  # your code here
end
