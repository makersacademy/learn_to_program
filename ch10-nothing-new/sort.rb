def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  return sorted if unsorted.empty?

  still_unsorted = []
  smallest = unsorted.pop

  unsorted.each do |word|
    if word < smallest
      still_unsorted.push smallest
      smallest = word
    else
      still_unsorted.push word
    end
  end

  sorted.push smallest
  recursive_sort still_unsorted, sorted
end

puts sort(['word', 'google', 'bump', 'time'])
