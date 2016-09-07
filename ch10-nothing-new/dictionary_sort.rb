def dictionary_sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  small = unsorted.pop

  remain_unsorted = []

  unsorted.each do | x |
    if x.downcase < small.downcase
      remain_unsorted.push small
      small = x
    else
      remain_unsorted.push x
    end
  end

  sorted.push small
  recursive_sort remain_unsorted, sorted
end

puts(dictionary_sort(["beans","Eggs","Brunch","apple","Acorn","badger"]))
