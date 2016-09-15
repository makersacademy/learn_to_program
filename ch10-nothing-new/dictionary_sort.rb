def dictionary_sort arr, sorted=[]
  a = arr[0]
  arr.each do |i|
    if i.downcase <= a.downcase
      a = i
    end
  end
  arr.delete_at(arr.index(a))
  sorted << a
  if arr.length > 0
    dictionary_sort arr, sorted
  else
    return sorted
  end
end