def shuffle arr
  prng = Random.new
  recursive_shuffle arr, [], prng
end


def recursive_shuffle arr, shuffled, prng
  num = arr.length
  pos = prng.rand(num)

  shuffled << arr[pos]
  arr.delete_at(pos)

  arr == [] ? shuffled : recursive_shuffle(arr, shuffled, prng)
end
def create_playlist(dir,artist)

  music_formats = ['mp3','wma','m4p']

  tracks = Dir[dir + artist +'/**/*.*'].select! {|ext| music_formats.any? {|format| ext =~ /#{format}/ } }

  File.open "/Users/peteburch/Desktop/#{artist}.m3u", 'w' do |f|
    f.write shuffle(tracks).join("\n")
  end

  puts "Completed!"
end

create_playlist('/Users/peteburch/Desktop/music/', 'Frank Zappa')