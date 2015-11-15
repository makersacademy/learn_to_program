$nesting = 0

def better_log desc, &block
  indent = " " * $nesting
  puts indent + "Beginning #{desc.inspect}..."
  $nesting += 1
  result = block[]
  $nesting -= 1
  puts indent + "...#{desc.inspect} finished, returning: #{result}"
end



better_log "outer block" do
  better_log "some little block" do
      better_log "teeny-tiny block" do
        "lOts of lOVe".downcase
      end
  7 * 3 * 2
  end

  better_log "yet another block" do
    "I love Indian food!"
  end

  "I love Indian food" == "I love Indian food"
end
