$logger_depth = 0

def better_log desc, &block
  prefix = ' ' * $logger_depth
  puts prefix + "Beginning \"#{desc}\"..."
  $logger_depth += 1
  result = block[]
  $logger_depth -= 1
  puts prefix + "...\"#{desc}\" finished, returning: #{result}"
end