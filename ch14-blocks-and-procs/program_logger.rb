def log1 desc, &block
puts 'Beginning "' + desc + '"...'
result = block.call.to_s
puts '..."' + desc + '" finished, returning: ' + result.to_s
end


log1 'outer block' do
	log1 'some little block' do
   		5
   	end
   	log1 'yet another block' do
   		'I like Thai food'
   	end
   	false
end 

