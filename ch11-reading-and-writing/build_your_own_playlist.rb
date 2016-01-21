def shuffle arr
  arr.sort_by{rand}
end

Dir.chdir '/Users/andrewhtun/music/iTunes/iTunes_Media/music'

music_files = shuffle Dir['/Users/andrewhtun/music/iTunes/iTunes_Media/music/*.m4a']

puts 'What wshould this playlist be called?'
playlist_name = gets.chomp.to_s

puts 'Playlist under contruction...'

File.open playlist_name + '.m4a', 'w' do |f|
  music_files.each do |item|
    f.write item+"\n"
  end
end

puts 'Playlist good to go!'