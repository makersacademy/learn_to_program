def some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted.length <= 0
    return "Sorted"
  end

  smallest = unsorted_array.pop
  still_unsorted =[]

  unsorted_array each do |tested|
    if tested < smallest
      still_unsorted.push smallest
      smallest = tested 
    else
      still_unsorted.push tested
    end
  end

  sorted_array.push smallest

end
