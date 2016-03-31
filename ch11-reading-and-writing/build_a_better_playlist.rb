
def music_shuffle filenames
filenames = Dir['**/*.{m4a,M4A,mp3,MP3}']

x = 0
track_number = 0
num_of_songs = 0
playlist = []
full_song_name = []
current_album = ''
previous_album = ''
num_of_songs = filenames.length


puts 'Playlist creator: what would you like to call this playlist?'
playlist_name = gets.chomp
playlist_name = "#{playlist_name}.m3u"
puts "Downloading #{filenames.length} files: "

while x < num_of_songs
track_number = rand(num_of_songs)
full_song_name = filenames(track_number).split'/'
current_album = full_song_name[2]
if current_album != previous_album
    if filenames(track_number) != ''
      playist << filenames[track_number]
      filenames[track_number] = ''
      x = x + 1
    else
    end
    previous_album = current_album
  else
  end
end
filename = 'playlist.m3u'

File.open filename, 'w' do |f|
  f.puts playlist
end
end

music_shuffle filenames
