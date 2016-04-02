$nesting_depth = 0

def better_log desc, &block
  # your code here
  prefix = ' '*$nesting_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $nesting_depth = $nesting_depth + 1
  result = block.call
  $nesting_depth = $nesting_depth - 1
  puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

better_log "outer block" do
	better_log "some little block" do
		better_log "teeny-tiny block" do 
			"lots of love"
		end
	end		
	
	better_log "yet another block" do
	"I love Indian food!"
end 
 true
end

