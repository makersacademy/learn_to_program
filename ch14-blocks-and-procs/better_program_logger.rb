$level = 0

def better_log desc, &block
 puts "#{' '*$level}Beginning \"#{desc}\"..."
 $level += 1
 result = block.call
 $level -= 1
 puts "#{' '*$level}...\"#{desc}\" finished, returning: #{result}"
end

better_log 'outer block' do 
    better_log 'some little block' do
        better_log 'tiny block' do
            10+11
        end
        3+2
    end
    better_log 'yet another block' do
        'I like Thai food!'
    end
    2>3
end