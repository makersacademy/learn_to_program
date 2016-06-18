def dictionary_sort arr

  sorted = false
  arr[0...-1].each.with_index do |x, i|
    if x.downcase > arr[i+1].downcase
    arr[i], arr[i+1] = arr[i+1], arr[i]
    sorted = true
  end
  end
  dictionary_sort(arr) if sorted
  arr


end
