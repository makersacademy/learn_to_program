#!/usr/bin/env ruby

def sort arr
  return  recursive_sort(arr, [])
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


