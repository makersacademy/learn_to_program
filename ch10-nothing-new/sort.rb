
def sort arr
sorted = false
arr[0...-1].each.with_index do |x, i|
  if x > arr[i+1]
  arr[i], arr[i+1] = arr[i+1], arr[i]
  sorted = true
end
end
sort(arr) if sorted
arr
end
