def program_log desc, &block
    puts "Beginning \"#{desc}\"..."
    returned = block.call
    puts "...\"#{desc}\" finished, returning: " + returned.to_s
end

program_log "outer" do
  program_log "some little" do
     1**1 + 2**2
  end
  program_log "yet another block" do
     "I like oranges!"
  end
  false
end
