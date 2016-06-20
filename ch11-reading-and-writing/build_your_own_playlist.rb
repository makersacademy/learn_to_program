Dir.chdir '/home/ubuntu/workspace/ch11-reading-and-writing/playlist'

def shuffle(array)
    recursive_shuffle(array, [])
end

def recursive_shuffle(arr, shuffled)
    if arr.length == 0
        return shuffled
    end
    
    num = rand(arr.size)
    shuffled.push(arr[num])
    arr.delete_at(num)
    recursive_shuffle(arr, shuffled)
end

all_oggs = shuffle(Dir['**/*.ogg'])

File.open 'playlist.m3u', 'w' do |f|
  all_oggs.each do |ogg|
    f.write ogg+"\n"
  end
end

puts 'Done!'