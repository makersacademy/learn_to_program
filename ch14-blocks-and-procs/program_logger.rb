def log desc, &block
  puts "Started running #{desc}..."
  result=block.call
  puts "Finished running #{desc}, returning: #{result}"
end

log "time putter" do
    
    log "inner calc" do
     1999
    end
    
    log "Roman Numeral!" do
       "CXXXVII" 
    end
    
Time.new
end

# log "Rory putter" do
#   puts "Rory was here" 
# end