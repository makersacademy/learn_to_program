$nesting_depth = 0

def better_log desc, &block
  space = " " * $nesting_depth
  puts space + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  returned = block.call
  puts space + "...\"#{desc}\" finished, returning: " + returned.to_s
  $nesting_depth -= 1
end

better_log "outer block" do
  better_log "some little block" do
     1**1 + 2**2
     better_log "teeny-tiny block" do
        "lots of love"
     end
  end
  better_log "yet another block" do
     "I like oranges!"
  end
  false
end
