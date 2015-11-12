def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = Array.new

  unsorted.each do |word|
    if word < smallest
      still_unsorted.push(smallest)
      smallest = word
    else
      still_unsorted.push(word)
    end
  end
  sorted.push(smallest)
  recursive_sort still_unsorted, sorted

end
