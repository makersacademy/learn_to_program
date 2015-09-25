def shuffle array
  shuffle_array = []
  while array.length > 0
    rand_index = rand(array.length)
    current_index = 0
    new_arr = []
    array.each do |element|
      if current_index == rand_index
        shuffle_array.push element
      else
        new_arr.push element
      end
      current_index +=1
    end
    array = new_arr
  end
  shuffle_array
end

shuffle_music = shuffle(Dir["/Users/Alix/Desktop/Music_2014/*.JPG"])
play_list = "MyPlayList.m3u"

File.open(play_list, "w") do |f|
  shuffle_music.each do |song|
    f.write song + "\n"
  end
end
