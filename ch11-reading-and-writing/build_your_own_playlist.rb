# your code here

def shuffle arr
   arr.shuffle
 end
 
mp3_files = shuffle(Dir['F:**/*.mp3']) 
 File.open 'playlist.m3u', 'w' do |f|
   mp3_files.each do |file|
     f.write file+ "\n"
   end
end