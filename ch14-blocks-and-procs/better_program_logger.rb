$logger_depth = 0

def better_log desc, &block
  pref = ' ' * $logger_depth
  puts pref + "Beginning \"#{desc}\"..."
  $logger_depth += 1
  result = block[]
  $logger_depth -= 1
  puts pref + "...\"#{desc}\" finished, returning: #{result}"
end