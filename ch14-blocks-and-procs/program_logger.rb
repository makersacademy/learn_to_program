def log desc, &block
  puts "Beginning #{desc}"
  result= block.call
  puts "#{desc} finished, returning: #{result}"
end

log "Testlog1" do    
    log "testlog2" do
     "Yes!"
    end
    "Finally testlog1"
  end