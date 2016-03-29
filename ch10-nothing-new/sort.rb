def sort(arr)

  sorted_list = []
  unsorted_list = []

  smallest = arr.first # set smallest to the first element
  sorted_index = 0 # this is its corresponding index

  arr.each_index do |i| # iterate through each element in the array by its index
  	if arr[i] < smallest # if the element is smaller than the smallest variable...
  		smallest = arr[i] # reassign the smallest variable with the new smallest element, if there is one
  		sorted_index = i # update the sorted_index to match the correspoding index of this element
  	end
  end

  sorted_list << smallest # add the smallest element to the sorted_list
  arr.slice!(sorted_index) # delete the smallest element from the array using its index
  unsorted_list = arr # assign the variable unsorted_list to arr


  while unsorted_list.count > 0 # whilst the unsorted_list still includes elements
  	sorted_list << sort(unsorted_list) # recursion: re-do the sort(arr) method with the unsorted_list as the parameter until there are no elements left in unsorted_list and all are added to sorted_list
  end

  sorted_list.flatten # as this is an array of arrays, flatten to make just one array


end

  