$nesting_depth = 0

def better_log (desc, &block)
    space = " " * $nesting_depth
    puts "#{space}Beginning \"#{desc}\"..."
    $nesting_depth += 1
    output = block.call
    $nesting_depth -=1
    puts "#{space}...\"#{desc}\" finished, returning: #{output}"
end

#test below

better_log "outer block" do
    better_log "some little block" do
        better_log "teeny-tiny block" do
        "lots of love"
        end
    42
    end
    better_log "yet another block" do
        "I love Indian food!"
    end
true
end