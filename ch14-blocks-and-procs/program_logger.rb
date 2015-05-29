def log string_description, &block
  puts string_description
  block.call
  puts "End of the method"
end

log "Inside the method" do 
  puts "Inside first block"
  log "In the method again" do
    "hello"
  end
end

log "To the method again" do
  puts "Inside the inner block"
end

