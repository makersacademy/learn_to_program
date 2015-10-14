def music_shuffle filenames

Dir.chdir '/Users/andydowell/Desktop/Fakemusic'
# filenames = Dir["/Users/andydowell/Desktop/Fakemusic/**/*.mp3"]
filenames.sort!
len = filenames.length


end

# File.open "playlist.m3u", 'w' do |f|
# 	filenames.each do |x|
# 		f.write "#{x}\n"
# 	end
# end

songs = ['aa/bbb',   'aa/ccc',   'aa/ddd',
         'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))