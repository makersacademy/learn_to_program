def sort arr
  new_array = []
  while true
    smallest = arr.min
    new_array << smallest
    arr.slice!(arr.index(smallest))
    break if arr.empty?
  end
  new_array
end

# puts sort(['can','feel','singing','like','a','can'])