def log desc, &block
  puts "Beginning #{desc}"
  result = block.call
  puts "#{desc} finished, returning #{result}"
end

log 'outer block' do
  log 'First block inside outer block ' do
    x = 5
    x
  end

  log 'Second block inside outer block' do
    x = "I like Thai food"
    x
  end

  x = "This is the result from outer block itself"
end
