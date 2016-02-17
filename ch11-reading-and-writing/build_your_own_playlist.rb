Dir.chdir '/Users/Phoebe/Music/itunes/itunes media/music' #this is where we want to store the music

all_my_songs = shuffle(Dir['**/*.{mp3,m4a}']) #this is where we find all the music files and shuffle them- note the **/ means it is recursive i.e. go into sub directories

File.open 'playlist.m3u', 'w' do |f|
  all_my_songs.each do |music|
    f.write music+"\n"
  end
end

puts 'Done!'

def shuffle arr
  # your code here
  arr.shuffle
end