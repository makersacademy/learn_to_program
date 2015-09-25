def log(desc, &block)
  puts "Beginning \"#{desc}\"..."
  x = block.call
  puts "...\"#{desc}\" finished, returning: #{x.to_s}"
end