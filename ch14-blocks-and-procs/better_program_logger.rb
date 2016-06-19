$logger_depth = 0

def better_log(desc, &block)
  prefix = ' '*$logger_depth
  puts "#{prefix}Beginning \"#{desc}\"..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts "#{prefix}...\"#{desc}\" finished, returning: #{result}"
end

better_log("outer block") do
  better_log("some little block") do
    1**1 + 2**2
  end

  better_log("yet another block") do
    "!doof iahT ekil I".reverse
  end

  '0' == 0
end
