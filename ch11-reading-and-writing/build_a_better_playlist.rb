def music_shuffle filenames
  filenames = filenames.sort
  num = filenames.length

  2.times do
    left_index = 0
    right_index = num/2
    shuffled = []

    while shuffled.length < num
      if shuffled.length % 2 == 0
        shuffled.push(filenames[right_index])
        right_index += 1
      else
        shuffled.push(filenames[left_index])
        left_index += 1
      end
    end

    filenames = shuffled
  end

  array = []
  cut = rand(num)
  index = 0

  while index < num
    array.push(filenames[(index + cut) % num])
    index += 1
  end

  array
end
