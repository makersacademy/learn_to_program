# /usr/bin/env ruby

$nested_depth = 0

def log description, &block
	indent = " " * $nested_depth
	puts indent + "Starting " + description + " ..."
	$nested_depth += 1
	returning = block.call
	$nested_depth -= 1
	puts indent + '..."' + description + '" finished, returning: ' + returning.to_s
end

log "outer block" do
  log "some little block" do
  	log "teeny-tiny block" do 
  		rand()
  	end
    (40 + 80) / 15
  end

  log "yet another block" do
    "I like Thai food!".upcase
  end
  "This is the end"
end
