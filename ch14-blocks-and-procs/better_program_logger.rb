# $depth = 0

# def better_log desc, &block
# 	prefix = " " * $depth
#   	puts prefix + "Beginning #{desc.inspect}..."
#   	$depth += 1
# 	result = block.call
# 	#$depth -= 1
#   	puts "...#{desc.inspect} finished, returning: " + result.to_s 
# end

# better_log "outer block" do
# 	better_log "another block" do 
# 		"Howdy. I'm the inner block."
# 	end

# 	better_log "yet another block" do
# 		(1+1).to_s
# 	end
# 	'0' == 0
# end
$logger_depth = 0

def better_log desc, &block
	prefix = ' '*$logger_depth
	puts prefix+"Beginning #{desc.inspect}..."
	$logger_depth += 1
	result = block[]
	$logger_depth -= 1
	puts prefix+"...#{desc.inspect} finished, returning: #{result}"
end

better_log 'outer block' do
	better_log 'some little block' do
		better_log 'teeny-tiny block' do 
			'lOtS oF lOVe'.downcase
		end
	7*3*2
	end
	better_log 'yet another block' do 
		'!doof naidnI evol I'.reverse
	end
 
	'0' == "0" 
end