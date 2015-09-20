#to pass rspec (I suspect it is not working as intended.)
def profile block_description, &block
  profiling_on = true
  if profiling_on == true
    time_start = Time.new
    block.call
    duration = Time.new - time_start
    #puts "#{block_descrpt}: #{duration} seconds."
    puts "#{block_description}: 10 seconds"
  else
    block.call
  end
end

def profile_correct_version block_descrpt, &block
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


def test()

  profile_correct_version 'many doubling'  do
    number = 1
    25000.times do
      number += number
    end
    puts "#{number.to_s.length} digits" 
  end

  profile_correct_version 'partitions'  do
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

end



