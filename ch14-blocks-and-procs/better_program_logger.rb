$logger_depth = 0

def log string_description, &block
  indent = ' ' * $logger_depth
  puts indent + string_description

  $logger_depth = $logger_depth + 4

  block.call
  
  $logger_depth = $logger_depth - 4
  puts indent + "End of the method"
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
