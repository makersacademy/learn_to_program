# THe $ makes this variable accessible from anywhere in the program.
$logger_depth=0

def log desc, &block
 
  prefix="      "*$logger_depth
  puts prefix+"Started running #{desc}..."
  # These increments and decrements surround the block.call as when the block is
  # called all 3 calculations are performed.
  $logger_depth=$logger_depth+1
  result=block.call
  $logger_depth=$logger_depth-1
  puts prefix+"Finished running #{desc}, returning: #{result}"
  
end

log "time putter" do
    
    log "inner calc" do
        log "Roman Numeral!" do
           "CXX" + "XVII" 
        end
        "1" + "999"
    end
Time.new
end

# log "Rory putter" do
#   puts "Rory was here" 
# end