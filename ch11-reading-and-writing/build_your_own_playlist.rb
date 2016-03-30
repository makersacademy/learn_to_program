def shuffle arr
  shuffle_recursive arr, []
end

def shuffle_recursive unshuffled, shuffled
  return unshuffled if unshuffled.length == 0

  random_index = rand(unshuffled.length)
  random_element = unshuffled[random_index]

  shuffled << random_element
  unshuffled.delete_at(random_index)

  shuffle_recursive unshuffled, shuffled

  return shuffled
end

music_dir = "/Users/michaelharrison/Music/iTunes/iTunes\ Media/Music/"
save_dir = "/Users/michaelharrison/Desktop/"
playlist_name = "It's The Bea.m3u"
search_string =  "The\ Bea*/*/*.m4a"

Dir.chdir (music_dir)

songs = Dir[search_string]

shuffled_songs = shuffle (songs)

Dir.chdir(save_dir)

File.open playlist_name, 'w' do |f|
  shuffled_songs.each { |song| f.write music_dir+song+"\n" }
end
