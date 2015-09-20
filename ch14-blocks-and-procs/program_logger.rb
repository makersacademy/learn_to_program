def log_my desc, &block
  	puts "Starting #{desc}"
  	result = block.call
  	puts "#{desc} finished and returned #{result}"
end

#Again the text had to be exactly the same in order to pass rspec, perhaps the rspec test
#should be changed to look for two lines of puts after the block has indd
#called, in the first line, the text should contain 'desc' somewhere, and
#in the second it should contain 'desc' and 'result_to_s' somewhere.
def log desc, &block
  	puts 'Beginning "' + desc + '"...'
  	result = block.call
  	puts '..."' + desc + '" finished, returning: ' + result.to_s
end

def profile_log desc, &block
	profile_log_on = true
	if profile_log_on == true
		puts "Starting the block:  #{desc}"
		time_start = Time.new
		result = block.call
		duration = Time.new - time_start
		puts "#{desc} finished in #{duration} seconds and returned #{result}."
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

profile_log 'number of number-partitions of n' do
	n = 100	
	if n == 0
		return 1
	elsif n < 0
		return 0
	end
	parray = []
	for i in 1..n
		parray << []
		for j in 1..i
			parray[i-1][j-1] = 0	
			if i == j
				parray[i-1][j-1] = 1	
			end				
			if i.to_f/2 >= j.to_f
				for k in j..i-j
					parray[i-1][j-1] += parray[i-j-1][k-1]
				end
			end
		end
	end	
	result = 0
	parray[n-1].each{|x| result += x }
	result
end
=end
