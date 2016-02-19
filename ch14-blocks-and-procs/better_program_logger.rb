$indent = 0

def better_log desc, &block
  puts " " * $indent + "Beginning \"#{desc}\"..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts " " * $indent + "...\"#{desc}\" finished, returning: #{result.to_s}"
end

better_log "outer block" do
  better_log "some little block" do
    better_log "teeny-tiny block" do
      "lots of love"
    end
    42
  end

  better_log "yet another block" do
    "I like Indian food!"
  end

  true
end
