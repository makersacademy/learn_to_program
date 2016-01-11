def program_log(desc, &block)
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result.to_s}" #what the block returned
end

program_log "outer block" do
  program_log "some little block" do
    5
  end
end
