# your code here
require "set"

def shuffle *arr
  # your code here
  arr.length > 1 ? shuffArray = arr[1] : shuffArray = []

  origArray = arr[0]

  if origArray.length <= 0

  	return shuffArray

  end

  i = rand(origArray.length).to_i

  shuffArray << origArray.fetch(i)

  origArray.delete_at(i)

  shuffle(origArray, shuffArray)

end

Dir.chdir "/home/jeremy/Music"

music = Dir["**/*.{mp3,wma,ogg,w4a}"]

puts "Name your playlist:"
filename = gets.chomp + ".m3u"
puts
while File.exist?(filename)
	puts "That file name already exists, please choose a different one."
	filename = gets.chomp + ".m3u"
end
puts
puts "How many songs would you like in your playlist (as a nunber)?"
snum = gets.chomp.to_i
puts

file_entries = ""

music.sample(snum).each do |f|
	file_entries = file_entries + "#{f}\n"
end

song_shuffle = shuffle(file_entries.split("\n"))

file_entries = song_shuffle.join("\n")

File.open filename, "w" do |file|
	file.write file_entries
end

puts "Playlist created."