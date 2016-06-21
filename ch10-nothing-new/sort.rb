def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, all_sorted
  if unsorted.length <= 0
    return all_sorted
  end

all_sorted = []
still_unsorted = []

smallest = unsorted.min

unsorted.each do |tested_string|
  if tested_string == smallest
    all_sorted << smallest
    unsorted.delete(smallest)
  else
    still_unsorted << smallest
  end
end


rec_sort still_unsorted, all_sorted
end

puts sort (['baby', 'baby', 'fred', 'car', 'ham', 'alien'])

#doesn't work. Puts only 'alien'
