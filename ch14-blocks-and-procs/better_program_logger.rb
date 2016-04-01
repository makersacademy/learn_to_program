$nesting_depth = 0
$space = " "

def better_log desc, &block
  puts $space*$nesting_depth + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  value = block.call
  $nesting_depth -= 1
  puts $space*$nesting_depth + "...\"#{desc}\" finished, returning: #{value}"
end

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



