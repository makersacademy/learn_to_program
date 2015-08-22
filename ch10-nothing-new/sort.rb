#!/usr/bin/env ruby

def sort arr
  return sorter(arr)
end

##Copy of dictionary sort, as it fulfils the same reqs and the test looks for method dictionary_sort.... DB


def dictionary_sort arr
	temp_array=[]
	return  recursive_sort(arr, temp_array)
end


def recursive_sort array, temp_array
	
	if array.empty?
		return temp_array
	end
	
	temp_array.push(array.min)
	array.delete(array.min)	
	
	recursive_sort(array, temp_array)
end


#my_array=['on', 'the', 'first', 'day', 'yellow' , 'monkey']

#puts my_sort=dictionary_sort(my_array)
#ruby_sort=my_array.sort

##Test for if it's worked - ascii sort only 
#if my_sort==ruby_sort
#	puts 'WIN!'
#else
#	puts 'You fail'
#end
