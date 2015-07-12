$depth = -1
def log desc, &block
  $depth += 1
  indent = " " * $depth
  puts "#{indent}Beginning \"#{desc}\"..."
  result = block.call
  puts "#{indent}...\"#{desc}\" finished, returning: #{result}"
  $depth -= 1
end

log "outer block" do
  log "some little block" do
    log "teeny-tiny block" do
      "lots of love"
    end
    "#{6 * 7}"
  end
  log "yet another block" do
    "I like Indian food!"
  end
  true
end