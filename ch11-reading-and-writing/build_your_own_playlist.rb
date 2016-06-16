require_relative '../ch10-nothing-new/shuffle'

music_path = '/Users/apple/Desktop/music/'
Dir.chdir(music_path)
all_music = shuffle(Dir['*.{MP3,mp3}'])

puts "What would you like to call your playlist?"
playlist_name = gets.chomp

File.open(playlist_name + ".m3u", "w") do |file|
  all_music.each do |mp3|
    file.write(music_path + mp3 + "\n")
  end
end

puts ""
puts "Playlist \"#{playlist_name}\" created!"
