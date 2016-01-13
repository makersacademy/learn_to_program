def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  output = block.call
  puts "...\"#{desc}\" finished, returning: #{output}"
end

=begin
program_log "outer block" do
  program_log "some little block" do
    5
  end
  program_log "another block" do
    "I like Thai food!"
  end
  false
end

=end