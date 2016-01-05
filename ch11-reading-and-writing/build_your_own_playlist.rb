Dir.chdir '/Users/Harry/code/project_files/music'

def shuffle arr
  random_store = []
  for i in 0..(arr.length-1)
    position = rand(arr.length)
    random_store.push(arr[position])
    arr[position] = nil
    arr.compact!
  end
  random_store
end
all_songs = shuffle(Dir['*.{mp3,m4a,m4p}'])

File.open 'playlist.m3u', 'w' do |f|
  all_songs.each {|x|
    f.write x + "\n"
  }
end

puts 'Finished'