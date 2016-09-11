def shuffle(sorted_array)
  recursive_shuffle(sorted_array, [])
end

def recursive_shuffle(sorted_array, unsorted_array)
  position = rand(0...sorted_array.length)
  if sorted_array.size > 0 # Exit condition to break the recursiveness
    unsorted_array.push(sorted_array[position])
    sorted_array.delete_at(position)
    recursive_shuffle(sorted_array, unsorted_array)
  else
    unsorted_array
  end
end
