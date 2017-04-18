require '/Users/Andrea/Dropbox (Personal)/Programming/repos/learn_to_program/ch10-nothing-new/shuffle.rb'

begin
  Dir.mkdir("#{Dir.home}/temp_muzak/playlists")
rescue
  puts "Folder exists"
ensure
  Dir.chdir("#{Dir.home}/temp_muzak/playlists")
end

all_music = shuffle Dir["../my_music/*"]

File.open("./playlist.m3u", "w")do |f|
  all_music.each {|song| f.write(song + "\n")}
end
