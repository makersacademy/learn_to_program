def music_shuffle filenames
  filenames = filenames.sort
  list_length = filenames.length

  2.times do
    left_index = 0
    right_index = list_length/2
    shuffled = []

    while shuffled.length < list_length
      if shuffled.length%2 == 0
        shuffled.push(filenames[right_index])
        right_index = right_index + 1
      else
        shuffled.push(filenames[left_index])
        left_index = left_index + 1
      end
    end
    filenames = shuffled
  end

  arr = []
  cut = rand(list_length)
  index = 0
  while index < list_length
    arr.push(filenames[(index+cut)%list_length])
    index = index + 1
  end
  arr
end