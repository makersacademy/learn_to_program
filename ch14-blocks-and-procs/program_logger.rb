def log desc, &block
  $POTATO = 0

  puts "started #{desc} ..."
  x = block.call
  puts "... OK OK..finished #{desc}, returned: #{x}"
end

say_potato = log 'proc1' do
  say_tomato = log 'proc2' do
    'OMFG TOMATO'
  end
  'OMFG POTATO'
  
end
