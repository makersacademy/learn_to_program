
=begin =====could just shuffle twice like this...=====
def music_shuffle filenames
filenames.shuffle.shuffle
end
=end

#to past the test
def music_shuffle filenames
  filenames = filenames.sort
  song_numbers = filenames.size

  2.times do
    left_index = 0
    right_index = song_numbers / 2
    new_filenames = []

    while new_filenames.size < song_numbers
      if new_filenames.size % 2 == 0
        new_filenames.push(filenames[right_index])
        right_index += 1
      else
        new_filenames.push(filenames[left_index])
        left_index += 1
      end
    end
    filenames = new_filenames
  end
  arr = []
  cut = rand(song_numbers)
  idx = 0

  while idx < song_numbers
    arr.push(filenames[(idx+cut)%song_numbers])
    idx = idx + 1
  end

  arr
  end