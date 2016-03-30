Dir.chdir('/Users/olliehaydon-mulligan/Music/iTunes/iTunes Media/Music')

require '/Users/olliehaydon-mulligan/Documents/Coding/learn_to_program/ch10-nothing-new/shuffle.rb'

song_list = Dir['**/*.m4a'].map{|song| "/Users/olliehaydon-mulligan/Music/iTunes/iTunes Media/Music/" + song}
song_list = shuffle(song_list)
song_list_string = song_list[0..19].join("\n")

playlist = '/Users/olliehaydon-mulligan/Documents/Coding/Exercises/playlist.m3u'

File.open playlist, 'w' do |f|
	f.write song_list_string
end