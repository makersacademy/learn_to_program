def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log "outer block" do
  program_log "some little block" do
      2 + 3
  end
  program_log "yet another block" do
    "I like Thai food!"
  end

  "My fave food" == "Chinese"
end
