
def shuffle arr
  rec_sort(arr, [])
end

def rec_sort unsorted_array, shuffled_array
if unsorted_array == []
  return shuffled_array
end

  still_unsorted_array = []
  randomized_value = []

    unsorted_array.each do |x|

     randomized_value = unsorted_array[rand(unsorted_array.length)]

    still_unsorted_array = unsorted_array - [randomized_value]

end

  shuffled_array << randomized_value

rec_sort still_unsorted_array, shuffled_array

end

collected_list = shuffle(Dir['music/*.mp3'])

puts "what would you like to call the playlist?"

filename = "playlist.m3u"

puts
print "creating list"

File.open filename, 'w' do | f |
  collected_list.each do |song|
  f.write song + "\n"
end
end







