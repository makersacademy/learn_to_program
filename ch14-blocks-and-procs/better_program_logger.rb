$indentation = 0

def better_log desc, &block
  indented = " " * $indentation

  puts "#{indented}Beginning \"#{desc}\"..."

  $indentation += 1

  returned_block = block.call

  $indentation -= 1

  puts "#{indented}...\"#{desc}\" finished, returning: #{returned_block}"
end

better_log "outer block" do
  better_log "some little block" do
    5
  end

  better_log "yet another block" do
    "I like Thai food!"
  end

  false
end
