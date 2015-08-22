#!/usr/bin/env ruby

def dictionary_sort arr
	return sorter(arr)
end

def sorter array
	
    temp_array=array
	
    l=temp_array.length
    for i in 0..l
	for i in 1..(l-1)
		strA=temp_array[i-1]
		strB=temp_array[i] 
		if strA.downcase > strB.downcase 	

			temp_array[i]=strA
			temp_array[i-1]=strB
				
		end
	end
     end
     return temp_array
	
end      




my_array=['on', 'the', 'first', 'day', 'yellow' , 'monkey']

puts my_sort=dictionary_sort(my_array)
ruby_sort=my_array.sort

#Test for if it's worked
if my_sort==ruby_sort
	puts 'WIN!'
else
	puts 'You fail'
end
