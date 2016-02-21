def music_shuffle song_list
  song_list = song_list.sort
  song_numbers = song_list.size

  2.times do
    left_index = 0
    right_index = song_numbers / 2
    new_song_list = []

    while new_song_list.size < song_numbers
      if new_song_list.size % 2 == 0
        new_song_list.push(song_list[right_index])
        right_index += 1
      else
        new_song_list.push(song_list[left_index])
        left_index += 1
      end
    end
    song_list = new_song_list
  end
  arr = []
  cut = rand(song_numbers)
  idx = 0

  while idx < song_numbers
    arr.push(song_list[(idx+cut)%song_numbers])
    idx = idx + 1
  end

  arr
end
