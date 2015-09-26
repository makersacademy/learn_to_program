$logger_depth = 0
def log desc, &block
  prefix = ' '*$logger_depth
  puts prefix + 'Beginning "' + desc + '"...'
  $logger_depth = $logger_depth + 1
  result = block.call
  
  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '"finished, returning: ' + result.to_s
end

log 'outer block' do
	log 'a little block' do
		log 'a tiny block' do
			'LoVE IT'.downcase
		end
		
	20 * 10 * 5
end

log 'yet another block' do
	'!em evol attog uoY'.reverse
end

'0' == "0"
end