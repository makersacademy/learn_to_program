#!/usr/bin/env ruby

def dictionary_sort arr
	return recursive_sort(arr, [])
end


def recursive_sort array, temp_array
	
	if array.empty?
		puts 'no more sorting to do'
		return temp_array
	end
	
	min= array.map(&:upcase).enum_for(:each_with_index).min
	temp_array.push(array[min[1]])
	array.delete_at(min[1])	
	recursive_sort(array, temp_array)
end


def sorter array ##DB note: you can tell I'm a c programmer by default... : S
		#This works, but also made more ruby-like version above
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

