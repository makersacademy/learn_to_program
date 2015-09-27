$nested_depth = 0

def log desc, &block
  spacer = '  '
  $nested_depth.times do print spacer
  end
  puts "Beginning \"" + desc + "\"..."
  $nested_depth = $nested_depth + 1
  result = block.call
  $nested_depth = $nested_depth -1
  $nested_depth.times do print spacer
  end
  puts "...\"" + desc + "\" finished, returning: " + result.to_s
end