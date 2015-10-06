def sort arr 
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted 
  if unsorted.length <= 0
    return sorted 
  end

  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |test_obj| 
    if test_obj < smallest
      still_unsorted.push smallest
      smallest = test_obj
    else
      still_unsorted.push test_obj
    end 
  end

  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted". 
  sorted.push smallest
  
  recursive_sort still_unsorted, sorted
end

puts(sort([' can' ,' feel' ,' singing' ,' like' ,' a' ,' can' ]))

