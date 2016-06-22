$nesting_depth = 0
def better_log desc, &block
  indent = " "*$nesting_depth
  puts indent + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  puts indent + "...\"#{desc}\" finished, returning: #{block.call}"
  $nesting_depth -= 1
end

better_log "outer block" do
  better_log "some little block" do
    better_log "teeny-tiny block" do
    "lots of love"
    end
  6*7
  end
  better_log "yet another block" do
    "I love Indian food!"
  end
  1 == 1
end
