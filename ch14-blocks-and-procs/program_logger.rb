def program_log desc, &block
  # your code here
  puts "Beginning \"#{desc}\"..."
  returned_block = block.call
  puts "...\"#{desc}\" finished, returning: #{returned_block}"
end

program_log "outer block" do
  program_log "some little block" do
    5
  end

  program_log "yet another block" do
    "I like Thai food!"
  end

  false
end
