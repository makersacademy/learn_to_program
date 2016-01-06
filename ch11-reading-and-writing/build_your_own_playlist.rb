# This is a playlist for all tracks by 'The Cat Empire' currently hosted on this machine.

require "yaml"

def shuffle arr
  word_hash = {}
  arr.each do |item|
    loop do
      rando = rand(1..arr.length)
      next if word_hash.values.include? rando
      word_hash[item] = rando
      break
    end
  end
  (1..arr.length).map do |num|
    word_hash.key(num)
  end
end

Dir.chdir "/Users/dimdim/Desktop"

shuffle_requested = nil

until shuffle_requested == "y" or shuffle_requested == "n"
	puts "Would you like to shuffle the playlist? y/n"
	shuffle_requested = gets.chomp.downcase
end 

track_names = Dir["/Users/dimdim/Music/iTunes/iTunes Media/Music/The Cat Empire/**/*.mp3"]

track_names = shuffle(track_names) if shuffle_requested
tracklist = ""
track_names.each {|track| tracklist += track + "\n" }

print "Assembling playlist - #{track_names.length} files total: "

File.open "Playlist.m3u", "w" do |f|
	f.write tracklist
end

puts
puts "Process complete. Playlist ready on Desktop."