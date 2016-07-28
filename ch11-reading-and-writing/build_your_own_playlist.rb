def playlist(filename)
  orig_mp3_files = Dir['**/*.mp3']
  mp3_files = []; n = orig_mp3_files.length
  n.times do
    #randomly define a postion of an item in the array
    position = rand(orig_mp3_files.length)
    #remove the item at a random position and put it into the shuffled_array
    mp3_files.push(orig_mp3_files.delete_at(position))
  end
  #open file and add the names of mp3 files one-by-one
  File.open filename, 'w' do |f|
    mp3_files.each { |track| f.puts track}
  end
end

playlist('playlist.m3u')
