def dictionary_sort arr
  recursive_dict_sort arr, []
end

def recursive_dict_sort unsorted_arr, sorted_array
  if unsorted_arr.length <= 0         #Once unsorted_arr has been emptied by the .pop method, return the sorted_array
    return sorted_array
  end

  smallest = unsorted_arr.pop # Creates variable smallest which points to the object removed from the unsorted_array by pop
  still_unsorted = []

  unsorted_arr.each do |tested_object| #For each object in unsorted_arr do:



    if tested_object.downcase < smallest.downcase  #if the object is smaller than the current onject in smallest. The .downcase is only involved in this evaluation, it doesnt change the original word. So the capitalized strings remain capitalized in the outputed array.
      still_unsorted.push smallest #push the current smallest into still_unsorted.
      smallest = tested_object # Add the new smallest object to smallest.
    else
      still_unsorted.push tested_object #If test object is larger than the object in smallest, push it to still_unsorted
    end
  end
  sorted_array.push smallest #push smallest into sort_array

  recursive_dict_sort still_unsorted, sorted_array
end

puts(dictionary_sort(["apple", "Hello", "jeff", "jim", "cabbage"]))