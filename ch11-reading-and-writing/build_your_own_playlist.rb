def shuffle arr
  arr.sort_by{rand}
end

Dir.chdir '/home/tombradley/Projects/chris-pine/ch11-readwrite/playlist'

music_files = shuffle Dir['/home/tombradley/Projects/chris-pine/ch11-readwrite/playlist/Foo Fighters - Wasting Light/*.mp3']

puts 'What would you like to call this playlist?'
playlistname = gets.chomp.to_s

puts 'Building playlist...'

File.open playlistname + '.m3u', 'w' do |f|
  music_files.each do |item|
    f.write item+"\n"
  end
end

puts 'Playlist ready!'