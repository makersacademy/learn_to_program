$depth = 0
def better_log desc, &block
  # your code here
  puts "#{"\t"*$depth}Beginning \"#{desc}\"..."
  $depth +=1
  result = block.call
  $depth -=1
  puts "#{"\t"*$depth}...\"#{desc}\" finished, returning: #{ result.to_s}"
end