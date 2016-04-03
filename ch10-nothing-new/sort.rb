def simple_sort arr
  puts arr.sort
end



def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_arr, sorted_array
  if unsorted_arr.length <= 0         #Once unsorted_arr has been emptied by the .pop method, return the sorted_array
    return sorted_array
  end

  smallest = unsorted_arr.pop # Creates variable smallest which points to the object removed from the unsorted_array by pop
  still_unsorted = []

  unsorted_arr.each do |tested_object| #For each object in unsorted_arr do:
    if tested_object < smallest #if the object is smaller than the current onject in smallest
      still_unsorted.push smallest #push the current smallest into still_unsorted.
      smallest = tested_object # Add the new smallest object to smallest.
    else
      still_unsorted.push tested_object #If test object is larger than the object in smallest, push it to still_unsorted
    end
  end
  sorted_array.push smallest #push smallest into sort_array

  recursive_sort still_unsorted, sorted_array
end




puts(sort(["apple", "hello", "jeff", "jim", "cabbage"]))