
look_at_files = Dir['/Users/timchipp/Desktop/music/**/*.mp3']
Dir.chdir '/Users/timchipp/Desktop/music'
filename = 'new_playlist.m3u'
str = ""
look_at_files
files = look_at_files.each { |x| str += "#{x}\n" }
File.open filename, 'w' do |f|
    f.write str
end