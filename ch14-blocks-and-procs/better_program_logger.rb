$indent = 0
def better_log desc, &block
  indentation = " "*$indent
  puts indentation + "Beginning \"#{desc}\"..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts indentation + "...\"#{desc}\" finished, returning: #{result.to_s}"
end
