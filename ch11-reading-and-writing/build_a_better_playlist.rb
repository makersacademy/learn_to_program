#looked up this answer as I was spending far too long on this exercise.


def music_shuffle array

x = 0
track_number = 0
number_songs = 0
playlist = [ ]
full_song_name = [ ]
album_on_deck = ''
previous_album = ''

number_songs = array.length

while x < number_songs

track_number = rand(number_songs)

full_song_name = array[track_number].split'/'

album_on_deck = full_song_name[2]

if album_on_deck != previous_album

if array[track_number] != ''
playlist.push array[track_number]
array[track_number] = ''
x = x + 1
else
end

previous_album = album_on_deck

else 
end

end

filename = 'Desktop/playlist.m3u'

File.open filename, 'w' do |f|
f.puts playlist
end

end

tracks = Dir['Desktop/music/**/*.{ogg,mp3,m4a}']

music_shuffle tracks