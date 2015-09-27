def log1(desc, &block)
  puts "Beginning \"#{desc}\"..."
  x = block.call
  puts "...\"#{desc}\" finished, returning: #{x.to_s}"
end
