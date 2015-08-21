def shuffle(an_array)
  main_shuffle an_array, []
end

def main_shuffle(unshuffled_array, shuffled_array)
  if unshuffled_array.length != 0
    unshuffled_array[rand((unshuffled_array.length + 1))].push shuffled_array
  end
  main_shuffle unshuffled_array
  return shuffled_array
end

all_music = (Dir["**/*.{MP3,mp3,ogg}"]).shuffle

File.open "Playlist.m3u", 'w' do |var|
  all_music.each do |var1|
    var.write var1 + "\n"
  end
end