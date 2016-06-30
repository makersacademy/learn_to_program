$nested_level = 0

def better_log desc, &block
  prefix = " " * $nested_level
  
  $nested_level += 1
  puts prefix  +  "Beginning \"#{desc}\"..."

  result = block.call

  $nested_level -= 1
  puts prefix  + "...\"#{desc}\" finished, returning: #{result}"
end
