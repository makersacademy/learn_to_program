$indent = 0

def  better_log desc, &block
  prefix = ' ' * $indent
  
  puts prefix + 'Beginning "' + desc + '"...'
  
  $indent += 1
  
  result = block.call
  
  $indent -= 1
  
 puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
    
end

better_log 'outer block' do 
   better_log 'some little block' do 
        better_log 'teeny-tiny block' do
            "lots of love" * 1
            end
          41 + 1
        end
      better_log 'yet another block' do
      "I Like Indian food!" * 1
    end
  9 == 9
end