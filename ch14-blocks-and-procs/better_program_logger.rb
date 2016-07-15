$nesting_depth = 0

def better_log(desc, &block)
  prefix = " "*$nesting_depth
  puts "#{prefix}Beginning \"#{desc}\"..."
  $nesting_depth += 1
  result = block.call
  $nesting_depth -= 1
  puts "#{prefix}...\"#{desc}\" finished, returning: #{result}"
end

better_log("outer block") do
  better_log("some little block")do
    5
  end
  better_log("yet another block") do
    "I like Thai food!"
  end
  false
end
