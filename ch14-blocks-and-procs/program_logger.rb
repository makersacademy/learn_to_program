# Rosie's version, which is working, but not passing the rspec

# def program_log desc, &block
# 	puts 'Starting the ' + desc + ' now...'  
# 	block_result = block.call
# 	puts desc + ' complete! It returned: ' + block_result.to_s
# end

# program_log 'outer block' do
# 	program_log 'first inner block' do
# 		'a lovely quiet little string'.downcase
# 	end

# 	program_log 'second inner block' do
# 		'a slightly shouty string'.upcase
# 	end
# 	'this very last string'
# end

def program_log desc, &block
  puts "Beginning #{desc.inspect}..."
  result = block[]
  puts "...#{desc.inspect} finished, returning: #{result}"
end

program_log 'outer block' do
  program_log 'some little block' do
    1**1 + 2**2
  end

  program_log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end
  
  '0' == 0
end