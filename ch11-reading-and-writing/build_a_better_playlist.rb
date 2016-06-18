#shuffle method

def music_shuffle playlist_array

x= 0
track_number = 0
shuffled_playlist = []
album = ''
previous_album = ''
songs = playlist_array.length
puts songs

until x == songs

track_number = rand(songs+1)

#pulling out what artist it is:
track_name = playlist_array[track_number]

short_array = track_name.split'Music/'

artist_array = short_array[1].split'/'
album = artist_array[1]

if album != previous_album

  if playlist_array[track_number] != ''

      track = playlist_array[track_number]

      shuffled_playlist << track
      puts "******** I've just added #{track}"
      x = x + 1
      puts x

    else
    previous_album = album
    end
end
end
end

#playlist method
Dir.chdir '/Users/jessicajones/music'
my_music = Dir['**/**.m4a']
my_music.map! do |name|
  '/Users/jessicajones/music/' + name
end

music_shuffle(my_music)

filename = "makers_playlist.m3u"
File.open filename, 'w' do |f|
  f.write my_music
end

puts my_music
