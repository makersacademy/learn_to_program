songs = Dir["/Users/jamesgardiner/Music/Downloaded/**/*.mp3"]

def music_shuffle filenames
  random_arr = []
  until filenames == []
    rand_value = rand(filenames.length)
    random_arr << filenames[rand_value]
    filenames.delete_at(rand_value)
  end
  return random_arr
end

puts(music_shuffle(songs))
