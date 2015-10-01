def sort arr
  
  (1..arr.length-1).each do |i|
    value_to_insert = arr.delete_at(i)

    insertion_index = i
    insertion_index -= 1 while insertion_index > 0 && value_to_insert < arr[insertion_index -1]

    arr.insert(insertion_index, value_to_insert)
  end

  arr

end

print sort([3,2,1,4,3,5,2,9,7,6,7,4,2])