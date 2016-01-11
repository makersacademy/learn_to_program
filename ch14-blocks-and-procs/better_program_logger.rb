$nesting_depth = 0

def better_log desc, &block
  # your code here
  puts " "*$nesting_depth + "Beginning \"#{desc}\"..."
  $nesting_depth += 1
  a = block.call
  $nesting_depth -= 1
  puts " "*$nesting_depth + "...\"#{desc}\" finished, returning: #{a}"  
end

=begin
program_log "outer block" do 
	program_log "some little block" do
		program_log "teeny tiny block" do
			"nothing"
		end
		5
	end
	program_log "yet another block" do
		"I like Thai food!"
	end
	false
end
=end