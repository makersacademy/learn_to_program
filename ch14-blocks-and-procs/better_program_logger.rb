$level=0

def log1 desc, &block
  # your code here
  indent = " "
  puts "#{indent*$level} Beginning \"#{desc}\"..."
  $level +=1
  retval=block.call
  $level -=1
  puts "#{indent*$level}...\"#{desc}\" finished, returning: #{retval}"
end
