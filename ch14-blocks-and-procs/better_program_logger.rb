$depth = 0

def log desc, &block
  prefix = " "*$depth
  puts prefix + "Beggining #{desc}..."
  $depth += 1
  result = block.call
  $depth -= 1
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
