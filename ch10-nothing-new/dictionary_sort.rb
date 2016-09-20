def dictionary_sort arr
  rec_sort arr, []             # Here we call "rec_sort" method on the random array
  end

  def rec_sort unsorted, sorted                      # "rec_sort" has 2 variables etc.
  if unsorted.length <= 0                          # If the unsorted variable = 0, then
    return sorted                                  # Returns finished product. "sorted" variable
  end
  # So if we got here, then it means we still # have work to do.
  smallest = unsorted.pop
  still_unsorted = []                              # This builds the "unsorted" array

  unsorted.each do |tested_object|                 # Calling .downcase on variable doesn't change original variable!!!!!
    if tested_object.downcase < smallest.downcase  # If the object from the array is smaller than the last
      still_unsorted.push smallest                 # then we push it from "still_unsorted to" "smallest"
      smallest = tested_object
    else
      still_unsorted.push tested_object            # If the still_unsorted object wasn't the smallest that time round
                                                   # it goes through tested_object again
    end
  end

  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted". l
  sorted.push smallest

  rec_sort still_unsorted, sorted                  # This line is the recursion, that keeps calling on its own method,
  end                                                # from within the method, until the first parameter is hit!

  puts(dictionary_sort([' can' ,' Feel' ,' singing' ,' like' ,' A' ,' can' ]))     # Forgot to change this to "dictionary_sort"
