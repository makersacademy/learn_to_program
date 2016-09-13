my_music = Dir["/Users/jamesgardiner/Music/Downloaded/*.mp3"]

filename = "/Users/jamesgardiner/Music/Downloaded/random-music.m3u"

def shuffle arr
  random_arr = []
  until arr == []
    rand_value = rand(arr.length)
    random_arr << arr[rand_value]
    arr.delete_at(rand_value)
  end
  return random_arr
end

my_music = shuffle my_music

File.open filename, "w" do |file|
  num = 0
  my_music.each do
    file.write(my_music[num] + "\n")
    num += 1
  end
end

puts "Done"
