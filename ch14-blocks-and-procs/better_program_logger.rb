$nested_depth = 0

def better_log desc, &block
  spacer = ' '*$nested_depth
  puts spacer + "Beginning \"" + desc + "\"..."
  $nested_depth = $nested_depth + 1
  result = block.call
  $nested_depth = $nested_depth -1
  puts spacer + "...\"" + desc + "\" finished, returning: " + result.to_s
end