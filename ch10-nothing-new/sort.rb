def sort arr
  recursive_sort arr, []
end

#inner method to sneak in secondary argument
def recursive_sort unsorted_array, sorted_array
  #making an extra array for working out
  #everything from unsorted array but the smallest unsorted value will go here
  #then becomes unsorted array and round we go again
  still_unsorted_array = []
  if unsorted_array.length <= 0
    return sorted_array
  end
  until unsorted_array.length == 1
    first_item = unsorted_array[0]
    second_item = unsorted_array[1]
    if first_item < second_item
      still_unsorted_array.push second_item
      unsorted_array.delete_at(1)
    else
      still_unsorted_array.push first_item
      unsorted_array.delete_at(0)
    end
  end
  sorted_array.push unsorted_array[0]

  recursive_sort still_unsorted_array, sorted_array
end

puts sort ["cat","goat","dog","aardvark","elephant","moose","elephant","duck"]