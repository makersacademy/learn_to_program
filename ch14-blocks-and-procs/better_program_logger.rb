$level_of_indentation = 0
def better_log(description, &block)
    tab = " "
    puts tab*$level_of_indentation + "Beginning \"#{description}\"..."
    $level_of_indentation += 1
    output = block.call
    $level_of_indentation -= 1
    puts tab*$level_of_indentation + "...\"#{description}\" finished, returning: #{output}"
end

better_log 'outer block' do
    better_log 'some little block' do
        better_log 'yet another block' do
            "I like Thai food!"
        end
        5
    end
    false
end