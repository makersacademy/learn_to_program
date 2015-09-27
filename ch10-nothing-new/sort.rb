def sort arr
  # your code here
  return arr if arr.length <= 1
  mid    = arr.pop
  first  = arr.select{|x| x <  mid}
  last   = arr.select{|x| x >= mid}
  sort(first) + [mid] + sort(last)
end