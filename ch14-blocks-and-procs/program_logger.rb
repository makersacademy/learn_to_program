def log desc, &block
  puts "Starting block within Proc log using #{desc.inspect}"
  result = block.call
  puts "#{desc.inspect} block has finished"
  puts "Your final retult value is #{result}"
end
