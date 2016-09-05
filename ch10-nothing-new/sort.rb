def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end
  #when unsorted empty returns sorted array
  first = unsorted.pop
  still_to_sort = []
  #pulled the current last element in order to compare
  unsorted.each { |compare|
   if compare < first
   unsorted.push first
   first = compare
   else
   still_to_sort.push compare
   end }
   sorted.push first
   recursive_sort still_to_sort, sorted
end
