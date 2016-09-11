$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning "' + desc + '"...'

  $logger_depth = $logger_depth + 1
	result = block.call
  $logger_depth = $logger_depth - 1

	puts prefix + '..."' + desc + '" finished, returning: ' + result.to_s
end

 better_log 'outer block' do
 	better_log 'some little block' do
    better_log 'teeny-tiny block' do
      'lots of love'
    end
    40 + 2
 	end

 	better_log 'yet another block' do
 		'I love indian food'
 	end

 	'0' == "0"
 end
