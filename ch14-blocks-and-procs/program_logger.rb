def program_log desc, &block
  # your code here
  puts 'Beginning "' + desc + '"...'
	val = block.call
	puts '..."' + desc + '" finished, returning: ' + val.to_s
end