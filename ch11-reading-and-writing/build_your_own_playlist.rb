def shuffle arr
  to_be_shuffled = []


while arr.length > 0
  rand_index = rand(arr.length)

  current_index = 0
  new_array = []

  arr.each do |x|
    if current_index == rand_index
      to_be_shuffled.push x
    else
      new_array.push x
    end

    current_index = current_index + 1
  end

  arr = new_array

end

to_be_shuffled

end

all_mp3s = shuffle(Dir['**/*.mp3'])

File.open 'playlist.m3u', 'w' do |x|
  all_mp3s.each do |mp3|
    x.write mp3+"\n"
  end
end

puts 'Done!'
