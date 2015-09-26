$depth = 1
def log desc, &block
  indent = '  ' * $depth
  puts indent + " Beginning " + desc
 $depth +=1
  result = block.call
  $depth -=1
  puts indent + " ending " + desc + " returning " + result.to_s
end

log " outer"  do 
	log " another block" do
 log " some smaller block" do
 	10  * 10
 end

 log " block 2" do
 	12345.to_s
 end

 log "block 3" do
 	123.is_a? Integer
 end
end	