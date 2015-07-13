
def log desc, &block
  puts "starting #{desc}..."
  output = block.call
  puts "#{desc} finished, returning:"
  puts output
end

$nesting_depth=0
log "outer block" do
  log "some little block" do
    5
  end
  log "yet another block" do
    "I like Thai food!"
  end
  false
end