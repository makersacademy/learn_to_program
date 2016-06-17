Dir.chdir '/Users/acsauk/Documents/Music'

track_names = Dir['/Users/acsauk/**/*.mp3']

def shuffle arr

  i = arr.length

  while i > 1
    i = i - 1
    random = i*rand
    arr[random], arr[i] = arr[i], arr[random]
  end

puts arr
end

shuffle track_names

puts 'What would you like to call the playlist?'
playlist_name = gets.chomp
playlist = "#{playlist_name}.m3u"

puts
print "Finding MP3 files on your SSD..."

File.open playlist, 'w' do |i|
  i.write(track_names.join("\n"))
end

read_playlist = File.read playlist

puts(read_playlist == track_names)

puts
puts 'Playlist created!'
