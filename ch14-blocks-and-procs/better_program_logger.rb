$space_count = 0

def log(desc, &block)
  space = " " * $space_count  
  puts "#{space}Beginning \"#{desc}\"..."
  $space_count += 1
  x = block.call
  $space_count -= 1
  puts "#{space}...\"#{desc}\" finished, returning: #{x.to_s}"
end
