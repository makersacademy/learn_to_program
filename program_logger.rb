def log block_description, &block
  puts "I have started #{block_description}"
  block.call
  puts "#{block_description} has finished returning #{block}"

end


log "What´s up doc 1" do
  log "What's up doc 2" do
    puts "whats"
  end
  puts "up"
end



log "What´s up doc 3" do
  puts "doc?"
end
