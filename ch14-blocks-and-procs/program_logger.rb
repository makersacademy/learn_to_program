def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  response = block.call
  puts "...\"#{desc}\" finished, returning: #{response}"
end

chain = Proc.new do
  program_log('some little block'){5} 
  program_log('yet another block'){"I love thai food!"}
  false
end

program_log 'outer block', &chain
