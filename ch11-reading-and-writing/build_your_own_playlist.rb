def playlist
  Dir.chdir '/Users/TY/Desktop/Music'

  songs = shuffle(Dir['**/*.mp3'])
  p songs.length

  puts "Please enter the name for your playlist"
  playlist_name = "#{gets.chomp}.m3u"

  File.open playlist_name, 'w' do |f|
    songs.each { |song| f.write song+"\n" }
  end

  puts "Your playlist has been created under the name of #{playlist_name}"
end

def shuffle arr
  new_arr = []

  while (arr.any?) do
    new_arr << arr.delete_at(rand(arr.length))
  end

  new_arr
end

playlist
