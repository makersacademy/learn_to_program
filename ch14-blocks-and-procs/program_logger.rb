def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  ans = yield(block)
  puts "...\"#{desc}\" finished, returning: #{ans}"
end
