

tracks = Dir['**/*.{m4a,M4A}']
puts 'Playlist creator: what would you like to call this playlist?'
tracklist_name = gets.chomp
tracklist_name = "#{tracklist_name}.m3u"
puts "Downloading #{tracks.length} files: "

track_number = 1
track_list = []
tracks.each do |x|
if tracks == 0
  puts "Nope, no tracks here dude!"
else puts track_list << "#{x}\n"
  track_number = track_number + 1
end
end

File.open tracklist_name, 'w' do |x|
 x.write shuffle track_list.join('')
end
