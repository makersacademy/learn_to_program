def sort array

 sorted_array = []

  while true
     smallest = array.min
     sorted_array << smallest
     array.slice!(array.index(smallest))
     break if array.empty?

   end
   sorted_array
 end
