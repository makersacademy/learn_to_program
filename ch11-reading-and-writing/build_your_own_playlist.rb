def music_shuffle arr
arr.sort_by{rand}
end

Dir.chdir('/Users/JackHardy/Music/iTunes/iTunes Media/Music/Coldplay/Mylo Xyloto')
playlist = Dir['*.m4a']
shuffled_playlist = music_shuffle(playlist)
filename = "shuffled_coldplay_playlist.m3u"
File.open filename, 'w' do |f|
shuffled_playlist.each{|title| f.write title + "\n"}
end
