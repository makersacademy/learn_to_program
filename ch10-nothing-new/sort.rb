def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  small = unsorted.pop

  remain_unsorted = []

  unsorted.each do | x |
    if x < small
      remain_unsorted.push small
      small = x
    else
      remain_unsorted.push x
    end
  end

  sorted.push small
  recursive_sort remain_unsorted, sorted
end

puts(sort(["beans","Eggs","Brunch","apple","Acorn","badger"]))
