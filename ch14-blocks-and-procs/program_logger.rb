def log desc, &block
  puts "Beginning #{desc}..."
  puts "...#{desc} finished, returning: #{block.call}"
end

log "outer block" do
  log "some little block" do
    2 + 3
  end
  log "yet another block" do
    "I like Thai food!"
  end
  1 == 2
end
