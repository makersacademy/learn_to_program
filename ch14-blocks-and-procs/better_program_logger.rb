$log_counter = 0

def better_log desc, &block
  indent = " " * $log_counter
  puts indent + 'Beginning "' + desc + '"...'
  $log_counter += 1
    returned = block.call
    $log_counter = $log_counter - 1
    puts indent + '..."' + desc +'" finished, returning: ' + returned.to_s
    #puts "$log_counter = #{$log_counter}"
  end

better_log 'outer block' do
  
  better_log 'some little block' do
    
    better_log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end # end teeny tiny
    
    7 * 3 * 2
  end # end some little

    better_log 'yet another block' do
      '!doof naidnI evol I'.reverse
    end # end yet another
  
false
end
