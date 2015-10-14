def log desc, &block
  puts "Beginning #{desc} ..."
  block.call
  puts "Finished #{desc}"
end

log 'Simple arithemtic' do
  log 'More arithmetic' do
    1_000.times {1+1}
  end
  1_000.times {1*1}
end