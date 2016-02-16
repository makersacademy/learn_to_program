def sort arr
  recursive_sort(arr, [])
end
def recursive_sort arr1, arr2
  return arr2 if arr1.length == 0
  arr2 << arr1.slice!(arr1.index(arr1.min))
  recursive_sort(arr1, arr2)
  arr2
end

def sort unsorted
  sorted = []
   until unsorted == []
     sorted << unsorted.min
     unsorted.slice!(unsorted.index(unsorted.min))
   end
 sorted
end
