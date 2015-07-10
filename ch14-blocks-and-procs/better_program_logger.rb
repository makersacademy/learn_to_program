$log_count = 0

def log desc, &block 
  $log_count += 1
  indent = " " * ($log_count -1) 
  puts "#{indent}Beginning \"#{desc}\"..."
  puts "#{indent}...\"#{desc}\" finished, returning: #{block.call}"
  $log_count -= 1
end


  
