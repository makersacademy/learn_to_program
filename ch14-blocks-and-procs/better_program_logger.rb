$nest_depth = -1

def better_log desc, &block
  $nest_depth += 1
  padding = " "*$nest_depth
  puts padding + "Beginning \"#{desc}\"..."
  result = block.call
  puts padding + "...\"#{desc}\" finished, returning: #{result}"
  $nest_depth -= 1
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