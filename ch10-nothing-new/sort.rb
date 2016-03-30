def sort(array)  
	sorted = []
    while true
	smallest = array.min 
    sorted << smallest 

    array.slice!(array.index(smallest))
  break if array.empty?

   end
    sorted
   end
