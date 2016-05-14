Dir.chdir 'C:/Documents and Settings/Hassan/Music'
# First we find all of the music to be added to the playlist.
music_names = Dir['/**/*.mp3']
print "Adding #{music_names.length} files: "
# This will be our counter. We'll start at 1 today,
# though normally I like to count from 0.
filename = 'playlist.txt'
playlist = ""
music_number = 1

shuffled = shuffle music_names

shuffled.each do |name|
print '.' # This is our "progress bar".
playlist = playlist + name + "/n"
end
File.open filename, 'w' do |f|
	f.write playlist
end

def shuffle arr
length = arr.length

num_array = []
shuffled_array = []
shufnum = Random.new
i = 0

while i < length do
        new_num = shufnum.rand(0...length)
        if num_array.include?(new_num) == false
                num_array << new_num
                i += 1
        end
end

arr.length.times.with_index do |x, i|
        shuffled_array << arr[num_array[i]]
end

return shuffled_array
end
