def log desc, &block
  puts "The block #{desc} is starting now..."
    returned = block.call
    puts "Block #{desc} has run, returning: #{returned.to_s}"
    false ? "False" : "True"
  end

log 'envelope block' do

  log 'square 7' do
    7 * 7
  end

  log 'hour in France' do
    "The hour in France now is #{Time.new.hour + 1} in 24 hour clock time."
  end
end
