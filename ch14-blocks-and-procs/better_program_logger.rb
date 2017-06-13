$depth = 0
def better_log desc, &block
  # your code here
  puts "Beginning \"#{desc}\"..."
  $depth +=1
  result = block.call
  $depth -=1
  puts "...\"#{desc}\" finished, returning: #{ result.to_s}"
end