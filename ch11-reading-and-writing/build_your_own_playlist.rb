def makePlaylist
  Dir.chdir '/Users/amynicholson/desktop/music'

  all_mp3s = shuffle(Dir['**/*.mp3'])

  File.open 'playlist.m3u', 'w' do |f|
    all_mp3s.each do |mp3|
      f.write mp3+"\n"
    end
  end
  puts "Done!"
end

def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled_array, shuffled_array
  while unshuffled_array.length > 0 do
    random_word = unshuffled_array.slice(rand(0..unshuffled_array.length-1))
    unshuffled_array.delete(random_word)
    shuffled_array << random_word
    recursive_shuffle unshuffled_array, shuffled_array
  end
    return shuffled_array
end

makePlaylist
