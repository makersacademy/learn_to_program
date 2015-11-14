def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  output = block.call
  puts '..."' + desc + '" finished, returning: ' + output.to_s
end

program_log 'outer_block' do
    #inner block
    program_log 'some little block' do
        2 + 3
    end
    
    program_log 'yet another block' do
        puts "I like Thai food!"
    end
    
end