
filename = "Playlist.m3u"
track_names = shuffle(Dir['C:/**/*.mp3'])
File.open filename 'w' do |f|
    track_names.each do |name|
      f.write name+"\n"
    end
end
