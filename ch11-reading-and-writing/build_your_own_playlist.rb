require './ch10-nothing-new/shuffle.rb'
# change our current working directory.
Dir.chdir '/Users/Yev/Music/'
# first we find and shuffle all music files.
tracks = shuffle(Dir['/Users/Yev/Music/**/*.mp3'])
# save a tracklist with the "m3u" filename extension.
File.open("tracklist.m3u", "w") do |filename|
  tracks.each do |name|
    filename.write name + "\n"
  end
end