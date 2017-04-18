$call_depth = 0

def better_log desc, &block
  puts "#{" " * $call_depth}Beginning \"#{desc}\"..."
  $call_depth += 1
  response = block.call
  $call_depth -= 1
  puts "#{" " * $call_depth}...\"#{desc}\" finished, returning: #{response}"
end

chain = Proc.new do
  better_log('some little block'){5} 
  better_log('yet another block'){"I love thai food!"}
  false
end

better_log 'outer block', &chain
