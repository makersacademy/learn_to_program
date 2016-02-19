$nesting_depth = 0

def better_log desc, &block
    space = " "* $nesting_depth
    puts "#{space}Beginning \"#{desc}\"..."
    $nesting_depth +=1
    puts "#{space}...\"#{desc}\" finished, returning: #{block.call}"
    $nesting_depth -=1
end
