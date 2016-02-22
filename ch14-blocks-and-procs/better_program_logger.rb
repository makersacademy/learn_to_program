$indent = 0

def log desc, &block
	indent = " " * $indent
  puts indent + "Beginning '#{desc}' ..."

  $indent += 1
  
  result = block.call
  
  $indent -= 1
  
  puts indent + "... '#{desc}' finished, returning: '#{result}'"
end

log "outer block"  do
	log "some little block" do
	5
end

log "yet another block" do
	"I like Thai food!"
end

false
end