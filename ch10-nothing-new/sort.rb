def sort arr
 recursive_sorted arr, []
end

def recursive_sorted unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []


  unsorted.each do | x |
      if x < smallest
        still_unsorted.push smallest
        smallest = x
      else
        still_unsorted.push x
      end
    end

    sorted.push smallest

    recursive_sorted still_unsorted, sorted
  end
