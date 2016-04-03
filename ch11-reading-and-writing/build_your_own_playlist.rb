def shuffle arr
  	unshuffled_list = arr
	shuffled_list = []

	while true
		current = unshuffled_list.sample
		shuffled_list.push(current)
  		unshuffled_list.delete_at(unshuffled_list.find_index(current))
  		break if unshuffled_list == []
  	end

	return shuffled_list

end

songs = Dir['../../../../../../music/music_for_ruby_playlist/*.mp3']
songs = shuffle songs

filename = 'playlist.m3u'

File.open filename, 'w' do |f|
  songs.each {|song| f.write song + "\n"}
end

