$depth = 0

def better_log desc, &block
  indent = ' '*$depth
  puts indent + "Beginning \"#{desc}\"..."

  $depth = $depth + 1

  result = block.call

  $depth = $depth - 1

  puts indent + "...\"#{desc}\" finished, returning: #{result.to_s}"

end


better_log 'outer block' do             
  better_log 'some little block' do      
    better_log 'teeny-tiny block' do 
    'lOtS oF lOve'.downcase
    end                  
    42                 
  end

  better_log 'yet another block' do      
    '!doof naidnI ekil I'.reverse    
  end

  '0' == "0"
end