
$indent=" "
$level=0

def log desc, &block
  # your code here
  puts "#{$indent*$level}Beginning \"#{desc}\"..."
  $level +=1
  retval=block.call
  $level -=1
  puts "#{$indent*$level}...\"#{desc}\" finished, returning: #{retval}"
end

#log "outer block" do
#	log "some little block" do
#    log "teeny-tiny block" do
#      "lots of love"
#    end
#    "42"
#	end
#  log "yet another block" do
#	   "I love Indian food"
#  end
#	"true"
#end
