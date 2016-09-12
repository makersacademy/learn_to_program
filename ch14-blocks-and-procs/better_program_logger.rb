$logger_indent = 0 #this is a global variable, so you can use it anywhere

def better_log desc, &block #the method takes the desc sting and the block
  indent = ' '*$logger_indent #setting the indent using ' ' (spaces)
  puts indent + "Beginning #{desc.inspect}..."
  $logger_indent += 1 #indents right
  results = block[] #this calls the code that is to be logged
  $logger_indent -= 1 #indents left
  puts indent + "...#{desc.inspect} finished, returning: #{results}" #returns the blocks result
end

better_log 'outer block' do #calling the bigger block (or first block)
  better_log 'some little block' do
    better_log 'teeny-tiny block' do #calling the smallest block.
      'JesUS\'s chEEsEs pLEasEs!'.downcase
    end
    (10 % 6)* 10 + 2
  end

  better_log 'yet another block' do #calling the 2nd of the secondary blocks
    '!doof iahT ekil I'.reverse.upcase #the code of the block
  end

  '0' == "0"
end
