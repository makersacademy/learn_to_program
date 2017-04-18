def sort arr
  sorted = Array.new
  sorted << arr.reject!.min(arr.count)
  sorted.flatten
end