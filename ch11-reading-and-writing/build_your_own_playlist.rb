require 'yaml'

def shuffle(arr)
  new_arr = arr.clone
  new_arr.reverse_each do |word|
    index = rand(new_arr.length)
    aux = word
    new_arr[new_arr.index word] = new_arr[index]
    new_arr[index] = aux
  end
  new_arr
end

def playlist(artist)
  Dir.chdir '/Users/Radu/Documents/playlists'
  songs = Dir['/Users/Radu/Music/**/*' + artist + '*.mp3']
  playlist = artist + '_songs.m3u'
  File.open(playlist, 'w+') do |f|
    shuffle(songs).each { |element| f.puts(element) }
  end
end

puts 'Please input an artist you like'
playlist(gets.chomp)
puts 'Playlist built!'
