def log desc, &block
  # your code here
  puts "Beginning \"" + desc + "\"..."
  
  puts "...\"" + desc + "\" finished, returning: " + block.call.to_s
end