def shuffle arr
  shuffled_array = []
  unsorted_array = arr

  if unsorted_array.length <= 0
    return sorted_array
  end

  while unsorted_array.length > 0

    shuffled_array << unsorted_array[rand(unsorted_array.length)]
    unsorted_array = unsorted_array - [shuffled_array[-1]]

  end

  shuffled_array
end
