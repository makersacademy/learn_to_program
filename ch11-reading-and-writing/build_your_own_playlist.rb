
require "yaml"
Dir.chdir "/Users/Sophie/Desktop/folder_a"

puts "What would you like to call the playlist?"
puts "Remember, no spaces!"
playlist_name = gets.chomp
puts "How many songs would you like to include?"
song_count = gets.chomp.to_i

playlist_array = []
songs_array = Dir["**/*.{MP3,mp3}"]

index = 0

while song_count > 0
  rand_index = rand(songs_array.length)
  curr_index = 0
  new_array = []
  songs_array.each do |item|
    if curr_index == rand_index
      playlist_array.push(item)
    else
      new_array.push(item)
    end
    curr_index += 1
  end
  songs_array = new_array
  song_count -= 1
end

playlist_array

filename = "#{playlist_name}.m3u"

File.open(filename, "w") do |f|
    f.write playlist_array.to_yaml
  end

read_string = File.read filename
read_array = YAML::load read_string

puts read_string
puts read_array
