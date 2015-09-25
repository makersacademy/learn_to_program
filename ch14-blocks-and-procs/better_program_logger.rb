$POTATO = -1
def log desc, &block
  $POTATO += 1
  space =( $POTATO > 0 ? '   ' * $POTATO : '')
  puts space+"started #{desc} ..."
  x = block.call
  puts space+"... OK OK..finished #{desc}, returned: #{x}"
end

say_potato = log 'proc1' do
  say_tomato = log 'proc2' do
    
    'OMFG TOMATO'
  end
  'OMFG GLOBAL POTATO'
  
end
