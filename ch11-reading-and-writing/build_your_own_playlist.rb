#I can't get this to work
#ref = https://github.com/makersacademy/pre_course/issues/639

# using the shuffle method as defined above

all_mp3s = (Dir["c:/**/*.mp3"]).shuffle

#all_mp3s = Dir.entries("C:/Users/g/Desktop/Zim photos - move!/Johnny Clegg & Savuka").select {|f| !File.directory? f}

=begin
all_mp3s = 
"C:\Users\g\Desktop\Zim photos - move!\Johnny Clegg & Savuka\In My African Dream\06 Dela.mp3
C:\Users\g\Desktop\Zim photos - move!\Johnny Clegg & Savuka\In My African Dream\07 Siyayilanda.mp3"
=end

puts all_mp3s

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end

puts 'Done!'