#Dir.chdir designates where to put the new playlist file.
#Note: this file must already exist, doesn't create new file.
#To create new file at the same time, use below line also:
#Dir.mkdir "/Users/claudiagreen/Desktop/TestMusicFile"
Dir.chdir "/Users/claudiagreen/Desktop"#/TestMusicFile
puts "Please name your playlist:"
#gets the playlist name
playlist_name = gets.chomp
#points the var 'mp3s' at all mp3 files in this directory
mp3s = Dir['/Users/claudiagreen/Desktop/test_music/**/*.mp3']
#points the var 'playlist' at 3 files from 'mp3s' using .sample
playlist = mp3s.sample(3)
mp3_info = ""
#For each file now in 'playlist', push the info into mp3_info string
playlist.each {|x| mp3_info << "#{x}\n"}
#Standard way to write file name in Ruby is...
#File.open (yourfile, 'w') { |file| file.write("your text") }
# ^ JUST LEARN THAT
File.open ("#{playlist_name}.m3u",'w') do {|y| y.write ("#{mp3_info}")} end

# Note: contents of created playlist .m3u file appears as follows:
# /Users/claudiagreen/Desktop/test_music/songname1.mp3
# /Users/claudiagreen/Desktop/test_music/songname2.mp3
# /Users/claudiagreen/Desktop/test_music/songname3.mp3
