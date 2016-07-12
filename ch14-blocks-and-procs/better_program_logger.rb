
$log_counter = 0
def better_log desc, &block
  # your code here
  prefix = " " * $log_counter
  puts "#{prefix}Beginning \"#{desc}\"..."
  $log_counter += 1
  result = block.call
  $log_counter -= 1
  puts "#{prefix}...\"#{desc}\" finished, returning: #{result}"

end
