$depth = 0
def better_log(desc, &_block)
  start = ' ' * $depth
  puts  "#{start}Beginning \"#{desc}\"..."
  $depth += 1
  result = _block[]
  $depth -= 1
  puts "#{start}...\"#{desc}\" finished, returning: #{result}" 
end
