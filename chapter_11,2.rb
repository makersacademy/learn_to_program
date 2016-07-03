#playlist 
# .mp3
def shuffle arr
	arr.sort_by{rand}
end 
def create_playlist 
	songs = shuffle(Dir["/Users/syalniz/Desktop/music/*.mp3"])
	File.open "playlist.m3u", "w" do |f|
		songs.each do |mp3|
			f.write mp3+"\n"
		end 
	end 
	puts "Done!"

end 

create_playlist

