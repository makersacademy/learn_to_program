$depth = 0

def better_log desc, &block
  space = ' '*$depth
  puts space + "Beginning #{desc.inspect}..." 
  $depth += 1
  result = block[]
  $depth -= 1
  puts space + "...#{desc.inspect} finished, returning: #{result}"
end




