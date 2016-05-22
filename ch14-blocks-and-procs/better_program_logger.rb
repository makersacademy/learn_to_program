$depth = 0


    def better_log desc, &block
        puts "#{" "*$depth}Beginning \"#{desc}\"..."
        $depth+=1
        result= block.call
        $depth-=1
        puts "#{" "*$depth}...\"#{desc}\" finished, returning: #{result}"
    end
    
    better_log 'outer block' do
        better_log 'some little block' do
            better_log 'teeny-tiny block' do
                "lots of love"
            end
            7 * 3 * 2
        end
        better_log 'yet another block' do
            "I love Indian food!"
        end
        false
    end

