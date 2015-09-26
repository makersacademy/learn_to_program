Dir.chdir "#{ENV["HOME"]}/Music/playlist"
file_list = Dir["#{ENV["HOME"]}/Music/*.mp3"] 
File.write("#{ENV["HOME"]}/Music/playlist/playlist.m3u", file_list.to_s)
