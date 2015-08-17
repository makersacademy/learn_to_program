def profile block_descrpt, &block
	profiling_on = true
	if profiling_on == true
		time_start = Time.new
		block.call
		duration = Time.new - time_start
		puts "#{block_descrpt}: #{duration} seconds."
	else
		block.call
	end
end

profile 'many doubling'  do
	number = 1
	25000.times do
		number += number
	end
	puts "#{number.to_s.length} digits"	
end

profile 'partitions'  do
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
	puts result
end


def profile2 block_description, block
	run_profiles = false
	if run_profiles == false
		return nil
	end
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds."
end

some_proc = Proc.new do 
	n = 1000
	result = 0
	for i in 1..n
		result += i**4
	end
	puts result
end

chiming = Proc.new do
	puts "Ding dong!"
end

#profile2 'some proc', some_proc 

def grandfather_clock(chime)
	hours = Time.new.hour.to_i 
	hours = 24 if hours == 0 
	if hours > 12
		num_of_chimes = hours - 12
	else
		num_of_chimes = hours
	end
	num_of_chimes.times{chime.call}
end

#grandfather_clock(chiming)

def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end



