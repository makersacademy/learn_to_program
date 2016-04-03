def music_shuffle filenames

  sorted_array = filenames.sort
  array_length = filenames.length

  2.times do
    left_pile = 0
    right_pile = array_length / 2
    shuffled_array = []
    while shuffled_array.length < array_length
      if shuffled_array.length % 2 == 0

        shuffled_array << (sorted_array[right_pile])
        right_pile += 1
      else

        shuffled_array << (sorted_array[left_pile])
        left_pile += 1
      end
    end
    sorted_array = shuffled_array
  end

  result = []
  cut = rand(array_length)
  index = 0

  while index < array_length
    result << (sorted_array[(index+cut)%array_length])
    index += 1
  end

  result
end
