$nesting = 0
def better_log desc, &block
  puts "#{"\s"*$nesting}Beginning \"#{desc}\"..."
  $nesting += 1 
  output = block.call
  $nesting -= 1 
  puts "#{"\s"*$nesting}...\"#{desc}\" finished, returning: #{output}"
end