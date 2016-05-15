def music_shuffle filenames

Dir.chdir '/Users/timchipp/Desktop/music'
filename = 'new_playlist.m3u'
str = ""
filenames.shuffle!
files = look_at_files.each { |x| str += "#{x}\n" }
File.open filename, 'w' do |f|
    f.write str
end
end
