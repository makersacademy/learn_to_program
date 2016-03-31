$Count = 0

def better_log desc, &block
  puts "#{" "*$Count}Beginning \"#{desc}\"..."
  $Count += 1
  ans = yield.block
  $Count -=1
  puts "#{" "*$Count}...\"#{desc}\" finished, returning: #{ans}"
end
