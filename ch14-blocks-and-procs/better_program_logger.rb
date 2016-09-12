def log desc, &block
  puts "Beginning #{desc}..."
  block.call
  puts "Finishing #{desc}..."
end

log "Outer block" do
  number = 5
  log "Inner block" do
    puts "  THIS IS THE INNER BLOCK!"
  end
end
