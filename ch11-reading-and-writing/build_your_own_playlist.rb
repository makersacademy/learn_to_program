# Find all mp3s in the directory of this program

def shuffle arr
  shuffled = []

  while arr.length > 0
    rand_index = rand(arr.length)
    shuffled << arr[rand_index]
    arr.delete_at(rand_index)
  end

  shuffled
end

mp3s = shuffle(Dir['**/*.{MP3,mp3}'])

File.open 'playlist.m3u', 'w' do |f|
  mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'
