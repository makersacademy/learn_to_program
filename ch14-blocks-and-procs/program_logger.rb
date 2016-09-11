def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  result = block.call
  puts "...\"#{desc}\" finished, returning: #{result.to_s}"
end

program_log "outer block" do
  program_log "little block," do
    5
  end

  program_log "yet another " do
    "I like thai food"
  end
end
