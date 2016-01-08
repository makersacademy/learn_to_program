def shuffle arr
  to_return = []
  while arr != []
    random_index = rand(arr.length)
    to_return << arr[random_index]
    arr.delete_at(random_index)
  end
  to_return
end

songs = shuffle Dir["**/*.m3u"]
filename = "playlist.txt"

File.open filename, "w" do |f|
  songs.each do |song|
    f.write song + "\n"
  end
end