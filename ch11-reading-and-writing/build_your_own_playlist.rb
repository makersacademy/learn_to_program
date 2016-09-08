def shuffle arr
  second_array = Array.new
  n = 0
  alength = arr.length

  alength.times do
    random_number = rand(0...alength)
    second_array[n] = arr[random_number]
    arr.delete(arr[random_number])
    alength -=  1
    n += 1
  end
  return second_array

end

files = shuffle(Dir['**/".mp3"'])
File.open 'playlist.m3u', 'w' do |f|
  files.each do |file|
    f.write file + '\n'
  end
end
