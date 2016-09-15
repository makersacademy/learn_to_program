def program_log desc, &block
 puts "Beginning \"#{desc}\"..."
 puts "...\"#{desc}\" finished, returning: #{block.call}"
end

program_log 'outer block' do 
    program_log 'some little block' do
        3+2
    end
    program_log 'yet another block' do
        'I like Thai food!'
    end
    2>3
end