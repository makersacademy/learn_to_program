def dictionary_sort arr
  recursive_sort(arr, [])
end
def recursive_sort arr1, arr2
  return arr2 if arr1.length == 0
  arr3 = arr1.map {|a| a.to_s.downcase}
  arr2 << arr1.slice!(arr3.index(arr3.min))
  recursive_sort(arr1, arr2)
  arr2
end
