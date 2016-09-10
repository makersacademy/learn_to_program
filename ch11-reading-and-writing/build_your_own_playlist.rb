Dir.chdir '/home/ubuntu/Projects/learn_to_program/ch11-reading-and-writing/Music'

music_files= Dir['*.mp3']
puts music_files

playlist_name=File.new("rory_playlist.m3u", "w")

def write_files object, filename
   File.open filename, 'w' do |f|
       f.write object.join("\n")
    end
end

write_files(music_files, playlist_name)