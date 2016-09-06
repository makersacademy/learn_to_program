require 'yaml'

def shuffle arr
  shuffle_up arr, [], arr.length
end

def shuffle_up arr, shuffled, max
  arr.each do |x|
    while true do
      index = rand(max)
      if shuffled[index].nil?
        shuffled[index] = x
        break
      end
    end
  end
  return shuffled
end


puts "Please input artist 1"
artist_1 = gets.chomp
puts "Please input artist 2"
artist_2 = gets.chomp
puts "Please input artist 3"
artist_3 = gets.chomp
song_names = Dir["/Users/malinnaleach/Music/iTunes/iTunes Media/Music/**/#{artist_1}/**/*.mp3", "/Users/malinnaleach/Music/iTunes/iTunes Media/Music/**/#{artist_2}/**/*.mp3", "/Users/malinnaleach/Music/iTunes/iTunes Media/Music/**/#{artist_3}/**/*.mp3"]
shuffled_pl = shuffle song_names
File.open("/Users/malinnaleach/Music/playlist.m3u", "w") {|f| f.puts(shuffled_pl)}
