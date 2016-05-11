@origin = "/Users/alistairwye/projects/music"
@destination = "/Users/alistairwye/projects/music/playlists"

Dir.chdir @destination
# Changes the current directory to where the @destination varibale is pointed.
playlist = Dir["#{@origin}/**/*.{mp3,m4a}"].shuffle
# Creates an array of each 'mp3' and 'm4a' file in the origin directory,
# shuffles it and assigns it to the variable 'playlist'.
File.open 'playlist.m3u', 'w' do |f|
  playlist.each do |m|
    f.write m+"\n"
# Creates a new file called 'playlist.m3u' and writes the file path for each
# song in the origin directory to a new line in the 'playlist.m3u' file, which
# looks something like this:
#
# /Users/alistairwye/Projects/music/The Smiths/Hatful of Hollow/07 Hand in glove.mp3
# /Users/alistairwye/Projects/music/The Smiths/Hatful of Hollow/14 Back to the old house.mp3
# /Users/alistairwye/Projects/music/The Smiths/Peel Session/04 Handsome Devil.mp3
# ... and so on
#
  end
end

puts 'Done!'
