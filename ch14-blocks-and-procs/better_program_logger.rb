$space = 0

def better_log desc, &block
  puts " "*$space + "Beginning \"" + desc + "\"..."
  $space += 1
  result = block.call
  $space -=1
  puts " "*$space + "...\"" + desc + "\" finished, returning: #{result}"
end