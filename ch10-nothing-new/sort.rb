def sort arr
  return arr if arr.length <= 1
  
  middle_number = arr.pop
  less_than = arr.select { |x| x<middle_number }
  greater_than = arr.select { |x| x>=middle_number }

  sort(less_than) + [middle_number] + sort(greater_than)
end