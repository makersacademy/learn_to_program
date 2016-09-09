root_dir = "/home/ants/music"
tracks = Dir["#{root_dir}/**/*.mp3"]

def music_shuffle filenames
	shuffled_array = []
	unshuffled_array = filenames
	last_genre = ""
  filenames.each do |filename|
  	until unshuffled_array.length == 0 do
  		random_item =  unshuffled_array.delete_at(rand(unshuffled_array.length))
  		genre = random_item.split("/")[4]
  		if genre == last_genre 
  			unshuffled_array << random_item
  		else
  			shuffled_array << random_item
  		end 
  		last_genre = genre
  	end
  end

  return shuffled_array
end


File.open "#{root_dir}/playlist.m3u", 'w' do |f|
	music_shuffle(tracks).each do |track|
		f.write(track)
		f.puts('')
	end
end

