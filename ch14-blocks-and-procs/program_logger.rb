def log desc, &block

  puts "Beginning #{desc}..."
  x = block.call
  puts "... #{desc} finished, returning: #{x}"
end

say_potato = log 'proc1' do
  say_tomato = log 'proc2' do
    'OMFG TOMATO'
  end
  'OMFG POTATO'
  
end
