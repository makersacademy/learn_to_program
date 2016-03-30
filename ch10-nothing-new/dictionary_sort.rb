def dictionary_sort(arr)

  sorted_list = []
  unsorted_list = []

  smallest = arr.first
  sorted_index = 0 

  arr.each_index do |i| 
  	if arr[i].downcase < smallest.downcase
  		smallest = arr[i] 
  		sorted_index = i 
  	end
  end

  sorted_list << smallest 
  arr.slice!(sorted_index) 
  unsorted_list = arr

  while unsorted_list.count > 0 
  	sorted_list << dictionary_sort(unsorted_list) 
  end

  sorted_list 
end
