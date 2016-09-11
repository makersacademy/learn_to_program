def program_log desc, &block              #changed method name from log to program_log, due to error message in rspec
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result.to_s}"

end


program_log 'outer block' do              #'outer block' is the desc, outer block start from "do on this line"
  program_log 'some little block' do       #'some little block' is the inner block
    1**1 + 2**2                   #the methods result.to_s returns '1**1 + 2**2'
  end

  program_log 'yet another block' do        #'yet another block' is another inner block
    '!doof iahT ekil I'.reverse     #the methods result.to_s has nothing to return, and will return false
  end

  '0' == 0
end                       #outer block ends here