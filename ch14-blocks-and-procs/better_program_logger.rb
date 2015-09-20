def log desc, &block
  $indent ||= 0   #set to 0 unless already defined
  puts ' '*$indent+"Beginning #{desc.inspect}..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts ' '*$indent+"...#{desc.inspect} finished, returning: #{result}"
end


def test
log 'outer-block' do  
	log 'inner-block1' do n = 100; n end
	log 'inner-block2' do
	r = 0
	2000.times{r+=1}
	end
end
end

#test

$indent_pl = 0
def profile_log desc, &block
	profile_log_on = true
	if profile_log_on == true
		puts "  "*$indent_pl + "Starting the block:  #{desc}"
		$indent_pl += 1
		time_start = Time.new
		result = block.call
		duration = Time.new - time_start
		$indent_pl -= 1
		puts "  "*$indent_pl + "#{desc} finished in #{duration} seconds and returned #{result}."
	else
		block.call
	end
end


=begin
profile_log 'outer-block' do  
	profile_log 'inner-block1' do n = 100; n end
	profile_log 'inner-block2' do
	r = 0
	2000.times{r+=1}
	end
end
=end