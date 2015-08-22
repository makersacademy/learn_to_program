#!/usr/bin/env ruby

def shuffle arr
  return recursive_shuffle(arr, [])
end



def recursive_shuffle array, temp_array
	
	if array.empty?
		return temp_array
	end
	random=rand(0..(array.length-1))
	temp_array.push(array[random])
	array.delete_at(random)	
	recursive_shuffle(array, temp_array)
end

