def better_playlist(filename)
  orig_mp3_files = Dir['**/*.mp3']
  #shuffle the music files twice
  mp3_files = music_shuffle(music_shuffle(orig_mp3_files))
  #open file and add the names of mp3 files one-by-one
  File.open filename, 'w' do |f|
    mp3_files.each { |track| f.puts track}
  end
end

def music_shuffle filenames
  shuffled_array = []; n = filenames.length
  n.times do
    #randomly define a postion of an item in the array
    position = rand(filenames.length)
    #remove the item at a random position and put it into the shuffled_array
    shuffled_array.push(filenames.delete_at(position))
  end
  shuffled_array
end

better_playlist('better_playlist.m3u')
