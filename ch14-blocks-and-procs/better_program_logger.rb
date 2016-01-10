$logger_depth = 0

def better_log desc, &block
  depth = " " * $logger_depth

  puts "#{depth}Beginning \"#{desc}\"..."
  $logger_depth = $logger_depth + 1

  answer = block.call

  $logger_depth = $logger_depth - 1
  puts "#{depth}...\"#{desc}\" finished, returning: #{answer}"

end
