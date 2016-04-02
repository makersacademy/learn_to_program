def sort(arr)  
  recursive_sort(arr, [])
 end    
def recursive_sort unsorted, sorted 
   return sorted if unsorted.length <= 0
   still_to_sort = []
    smallest = unsorted.pop 
    unsorted.each do |x|
    if x < smallest
    still_to_sort << smallest
    smallest = x
    else
    still_to_sort << x
    end
    end
    sorted << smallest
recursive_sort still_to_sort , sorted
end

  #puts(sort(["a", "can", "can", "feel", "like", "singing"]))
  

