require_relative "../ch10-nothing-new/shuffle"

Dir.chdir "#{ENV['HOME']}/mymusic/playlists"
file_list = Dir["#{ENV['HOME']}/mymusic/**/*.mp3"]
File.write('playlist.m3u', shuffle(shuffle(file_list)).join("\n"))