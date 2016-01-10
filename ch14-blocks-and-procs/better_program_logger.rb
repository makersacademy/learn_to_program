$logger_depth = 0
$depth = " "

def better_log desc, &block
  prefix = $depth * $logger_depth
  puts "#{prefix}Beginning \"#{desc}\"..."
  $logger_depth += 1
  value = block.call
  $logger_depth -=1
  puts "#{prefix}...\"#{desc}\" finished, returning: #{value}"
end

better_log('outer block') do
  better_log('some little block') do
    better_log('beginning teeny-tiny block') do
      'lots of love'
    end
    42
  end
  better_log('yet another block') do
    "I like Thai food"
  end
  false
end
