Dir.chdir "/Users/mattia/Desktop/"

mp3 = Dir["/Users/mattia/Desktop/txt_files/*.{mp3,ogg}"]

#puts mp3
filename = File.new('playlist_m3u.m3u','w+')

#mp3.each do |f|
#		filename.write f + "\n"   Non mi servono perchè l'ho replicata sotto con il rand
#end


while mp3.length != 0 
	a = rand(mp3.length)
	filename.write mp3[a] + "\n"
	mp3.delete_at(a)
end
