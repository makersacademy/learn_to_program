def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    "Nikesh is a funny man."
  end

  log 'yet another block' do
    'pass the damn rspec'.upcase
  end

  number = 1
  25000.times { number = number + number }
  "#{number.to_s.length} digits"
  
end


 