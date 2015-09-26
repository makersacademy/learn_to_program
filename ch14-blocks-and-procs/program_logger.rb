def log1 desc, &block
  # your code here
  puts "Beginning #{desc} ... " 
  block.call
  puts "...#{desc} finished, returning #{block.call}"
end