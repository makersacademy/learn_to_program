# your code here
def new_playlist
  all_mp3s = shuffle(Dir['**/*.mp3'])

  File.open 'New_playlist' 'w' do |f|
    all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end
end

puts "Done!"
