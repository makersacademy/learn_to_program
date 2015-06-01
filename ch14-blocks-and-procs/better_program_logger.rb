# your code here
$logger_depth = 0

def log string_description, &block
	prefix = ' '*$logger_depth
	puts prefix+"Beginning #{string_description.inspect}..."
	$logger_depth += 1
	result = block[]
	$logger_depth -= 1
	puts prefix+"...#{string_description.inspect} finished, returning: #{result}"
end

log 'outer block' do 
	log 'some little block' do
		log 'teeny-tiny block' do
			'lotS oF lOVe'.downcase
		end
		7 * 3 * 2
	end

	log 'yet another block' do
		'!ereh dam lla er\'eW'.reverse
	end
	'0' == "0"
end