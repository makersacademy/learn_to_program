$POTATO = -1
def log desc, &block
  $POTATO += 1
  space =( $POTATO > 0 ? ' ' * $POTATO : '')
  puts space+"Beginning #{desc.inspect}..."
  x = block.call
  puts space+"...#{desc.inspect} finished, returning: #{x}"
end


say_potato = log 'proc1' do
  say_tomato = log 'proc2' do
    
    'OMFG TOMATO'
  end
  'OMFG GLOBAL POTATO'
  
end
