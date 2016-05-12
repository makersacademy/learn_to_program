begin
    Dir.mkdir("#{Dir.home}/temp_muzak/playlists")
  rescue
    puts "Folder exists"
  ensure
    Dir.chdir("#{Dir.home}/temp_muzak/playlists")
end

all_music = mixup_shuffle Dir["../my_music/*"]

File.open("./playlist.m3u", "w")do |f|
  all_music.each {|song| f.write(song + "\n")}
end

  #selects the next song randomly and checks the artist: if different than previous
  #then keeps, otherwise selects a new random song, unless there are no new artists
def mixup_shuffle arr
  recursive_shuffle(arr, [])
end

def recursive_shuffle(array, shuffled)
  return shuffled if array == []
  
  current_item = array.last
  next_item = array[rand(array.size)]
  artist_regex = /\/\w*--/
  
  while current_item.match(artist_regex)[0] != next_item.match(artist_regex)[0]  
    next_item = array[rand(array.size)]
    break if array.all? {|song| current_item.match(artist_regex)[0] == song }
  end

  shuffled << array.delete_at(array.index(next_item)])
  recursive_shuffle(array, shuffled)
end
