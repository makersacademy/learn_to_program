$depth = 0

def better_log desc, &block

  indent = " " * $depth

  $depth = $depth + 1
  puts  indent + "Beginning \"#{desc}\"..."
  output = block.call
  $depth = $depth -1
  puts indent + "...\"#{desc}\" finished, returning: #{output}"
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
