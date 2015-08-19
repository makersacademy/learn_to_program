def log desc, &block
  puts " Beginning " + desc
  result = block.call
  puts " ending " + desc + " returning " + result.to_s
end

log " outer"  do 
	20 * 20
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
