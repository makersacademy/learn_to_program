
# first  the shuffle method

def shuffle arr
  shuffled = arr.clone
  shuffled.each_index do |index|
      num = rand(shuffled.length)
      temp = shuffled[index]
      shuffled[index] = shuffled[num]
      shuffled[num] = temp
  end
  if shuffled == arr
    shuffle shuffled
  end
  shuffled
end

# get filenames
music_names = Dir['**/*.mp3']

# shuffle them
playlist_arr = shuffle music_names

# make it a string
playlist_str = playlist_arr.join("\n")

# write to file
filename = "playlist1.m3u"
File.open filename, 'w' do |f|
  f.write playlist_str
end
