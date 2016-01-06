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

music = shuffle(Dir['music/*.mp3'])

filename = 'tunes.m3u'

File.open filename, 'w' do |f|
music.each do |n|
f.write n + "\n"
end

end
# your code here