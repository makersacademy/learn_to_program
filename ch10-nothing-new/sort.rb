def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, all_sorted
    return all_sorted if unsorted.length <= 0

still_unsorted = []

smallest = unsorted.pop

unsorted.each do |tested_object|
  if tested_object < smallest
    still_unsorted << smallest
    smallest = tested_object
  else
    still_unsorted << tested_object
  end
end

all_sorted << smallest
rec_sort still_unsorted, all_sorted
end

# puts sort (['james', 'john', 'james', 'cake', 'alien', 'baby'])
