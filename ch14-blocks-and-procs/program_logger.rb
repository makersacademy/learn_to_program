def log desc, &block
  puts "Beggining #{desc}..."
  result = block.call
  puts "...#{desc} finished, returning: #{result}"
end

log "outer_block" do
  log "some little block" do
    2*5 - 5
  end

  log "Yet another block!" do
    "I like thai food!"
  end

  "A" == "B"
end
