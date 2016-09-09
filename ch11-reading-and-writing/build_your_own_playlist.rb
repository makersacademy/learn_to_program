#  This program finds all music files (.mp3, .wav, .aif) 
#  in your chosen directory - 'MUSIC_PATH',
#  and makes a .m3u playlist from it.
#  Tracks are sorted alphabetically

MUSIC_PATH = '/Users/tadasmajeris/Downloads/nu house : techno'

if Dir[MUSIC_PATH].empty?
	puts "ERROR! Directory '#{MUSIC_PATH}' not found!"
	exit
end
Dir.chdir(MUSIC_PATH)

#  First we find all of the pictures to be moved.
file_names = Dir['./*.{mp3,wav,aif}']

if file_names.length == 0
	puts "ERROR! Directory '#{MUSIC_PATH}' is empty!"
	exit
end
file_names.sort! # sort alphabetically, as it first finds .mp3, then .wav

puts 'What would you like to call this playlist?'
playlist_name = ''
until playlist_name != ''
	playlist_name = gets.chomp.strip
	puts 'Please, enter a name' if playlist_name == ''
end
playlist_name += '.m3u'

playlist_text = ""
file_names.each { |name| playlist_text << name + "\n" }

File.open playlist_name, 'w' do |f|
    f.write playlist_text
end

puts 
puts 'Done!'