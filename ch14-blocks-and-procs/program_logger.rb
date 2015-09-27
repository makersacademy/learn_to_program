def log desc, &block

  puts "Beginning \"" + desc + "\"..."
  puts "...\"" + desc + "\" finished, returning: " + block.call.to_s

end

log 'outer block' do
  log 'some little block' do
        1**1 + 2**2
  end
  log 'yet another block' do
    'I like Thai food!'
  end
'These exercises are well explained' == false  
end




