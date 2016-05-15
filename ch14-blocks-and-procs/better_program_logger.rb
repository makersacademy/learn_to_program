$indent = ''

def better_log desc, &block
	puts $indent + 'Beginning "' + desc + '"...'
	$indent += ' '
	result = block.call
	$indent[-1] = ''
	puts $indent + '..."' + desc + '" finished, returning: ' + result.to_s
end


# program_log 'outer block' do 
# 	program_log 'some little block' do
# 		program_log 'teeny tiny block' do
# 			"hello"
# 		end
# 		2 + 3
# 	end
# 	program_log 'yet another block' do
# 		'I like Thai food!'
# 	end
# 	false
# end

