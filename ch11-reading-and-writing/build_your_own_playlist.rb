song_array = Dir['./music_files/*mp3']
filename = 'playlist.m3u'
number_of_tracks = song_array.length
playlist = []

x = number_of_tracks
while x > 0
  song_number = rand(number_of_tracks)
  if song_array[song_number] != ''
     playlist.push song_array[song_number]
     song_array[song_number] = ''
     x-=1
  else
  end
end

File.open filename, 'w' do |f|
  f.puts playlist
end