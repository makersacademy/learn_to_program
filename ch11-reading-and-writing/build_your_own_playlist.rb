#using as reference to help me write my code
# File.open filename, 'w' do |f|
#f.write test_string
#end
def shuffle arr
  arr.shuffle
end

mp3_files = shuffle(Dir['F:**/*.mp3']) #nonexisten
File.open 'playlist.m3u', 'w' do |f|
  mp3_files.each do |file|
    f.write file+ "\n"
  end
end
