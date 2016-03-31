def program_log(description, &block)
    puts "Beginning \"#{description}\"..."
    output = block.call
    puts "...\"#{description}\" finished, returning: #{output}"
end

program_log 'outer block' do
    program_log 'some little block' do
        program_log 'yet another block' do
            "I like Thai food!"
        end
        5
    end
    false
end