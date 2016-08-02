def log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block.call
  puts "...#{desc.inspect} finished, returning: \n#{result}"
end

log "outer block" do
  log "some little block" do
    3 + 2
  end

  log "yet another block" do
    "!doof iahT ekil I".reverse
  end
end
