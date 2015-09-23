# Had a few attempts at this and was struggling to set it up so took Chris Pine's answer and worked through it until it made sense.
# Something to come back to and attempt again from scratch.

def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  puts unsorted.join(', R! ')
  if unsorted.length <= 0
  return sorted
  end

# So if we got here, then it means we still # have work to do.

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each do |tested_object|
    if tested_object < smallest
      still_unsorted.push smallest
      smallest = tested_object
    else
      still_unsorted.push tested_object
    end
  end

        #  Now "smallest" really does point to the
        #  smallest element that "unsorted" contained,
        #  and all the rest of it is in "still_unsorted".

  sorted.push smallest
  recursive_sort still_unsorted, sorted
end