$indent = 0

def better_log desc, &block 
    indent_amount = " " * $indent # set a space "" "" for each indent increment
    
  puts indent_amount + "Beginning \"#{desc}\"..." 
  #block.call # block call not needed, as have it assigned to 'result' variable
  $indent += 1 # now block is about to run increment indent
  result = block.call
  $indent -= 1 # now block has run decrese indent
  puts indent_amount + "...\"#{desc}\" finished, returning: #{result}" # put result plus however many increments
end