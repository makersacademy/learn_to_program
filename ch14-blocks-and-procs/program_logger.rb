def log desc, &block
  puts "Beginning #{desc}..."
  result = block.call
  puts "...#{desc} finished, returning:"
  puts "#{result.to_s}"
end

log "outer block" do
    log "some little block" do
        10 / 2
    end
    
    log "yet another block" do
        "I like Thai food!"
    end
    false
end