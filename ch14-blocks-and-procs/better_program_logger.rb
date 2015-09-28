$logger_depth = 0
def log1 desc, &block
  prefix = '   '*$logger_depth
  puts prefix + "Beginning '#{desc}' ..."
  $logger_depth = $logger_depth + 1
  result = block.call
  $logger_depth = $logger_depth - 1
  puts prefix + "... '#{desc}' finished, returning: #{result.to_s}"
end

log1 "outer block" do
	log1 "some little block" do
		log1 "teeny-tiny block" do
			"lOts oF loVE".downcase
		end

	7*3*2
	end

	log1 "yet another block" do
		"!doof iahT ekil I".reverse	
	end
	'0' = 0
end		