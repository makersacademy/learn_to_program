# Shuffle method from before:
def shuffle arr
  new_arr = []
  until arr.empty?
    pick = arr[rand(arr.length)]
    new_arr << pick
    arr.delete(pick)
  end
  new_arr
end

# The bit that writes the playlist
Dir.chdir("../../Music")
my_music = Dir["*.mp3"]

my_music_shuffle = shuffle my_music

playlist = "MyMusic.m3u"

File.open playlist, 'w' do |f|
  f.puts my_music_shuffle
end