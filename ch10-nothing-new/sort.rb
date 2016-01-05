def sort(arr)
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
 #["d", 'a', 'c', 'b']
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  to_sort = []

  unsorted.each do |word|
    if smallest < word == true
      to_sort << word
    else
      to_sort << smallest
      smallest = word
    end
  end

    sorted << smallest
    unsorted = to_sort
    recursive_sort(unsorted, sorted)

end

test = ['y',"a", 'd', 'c','z', 'x', 'b']

p sort test
