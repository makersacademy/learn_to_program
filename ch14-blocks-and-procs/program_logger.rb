def log desc, &block
  puts "Beginning '#{desc}' ..."
  output = block.call
  puts "...'#{desc}' finished, returning: #{output}"
end


log 'outer block' do
  log 'some little block' do 
    1 * 5
  end

  log 'yet another block' do
    "I like Thai food!"
  end
end