# your code here
def create_playlist (dir, filename, shuffle = false)

songs = Dir[ dir + "/**/*.mp3"]

File.open filename, 'w' do |f|
    songs = songs.shuffle if shuffle
    songs.each do |song|
        f.write song + "\n"
    end
    
    end
end

