$indent = 0
def better_log desc, &block
  indention = ' '*$indent
  puts indention + "Beginning \"#{desc}\"..."
  $indent += 1
  r = block.call
  $indent -= 1
  puts indention + "...\"#{desc}\" finished, returning: #{r.to_s}"
end