require 'yaml'

#naviagate to the correct directory
Dir.chdir '/Users/michaello/Desktop/RUBY/chapter 11/mp3'

#collect the names of the songs
songs = Dir['*.mp3']


print "Downloading #{songs.length} files:  "

#create a text file

filename = "best_playlist.txt"
file_playlist = "best_playlist.m3u"

#copy the songs into the .txt file

 File.open filename, 'w' do |f|
    f.write songs.to_yaml
 end

# load the songs from the txt file and get the absolute path for each of them

arr_of_songs_yaml = File.read filename
arr_of_songs = YAML::load arr_of_songs_yaml

map_of_songs = arr_of_songs.map do |song|
  File.absolute_path(song)
end

#mix up the order of the map_of_songs, using my shuffle method

def sort some_array
# This "wraps" recursive_sort.
recursive_sort some_array, []
end
def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array == []
    return sorted_array
  end
  if sorted_array == []
    num = unsorted_array.length
    sorted_array = Array.new(num)
    # num.times { sorted_array << nil}
  end

  available_indexes = []
  sorted_array.each_with_index {|val, index| available_indexes << index if val == nil}
  random_index = rand(available_indexes.length)
  rand_avail_index = available_indexes[random_index]
  sorted_array[rand_avail_index]= unsorted_array.pop

  recursive_sort(unsorted_array, sorted_array)
end

map_of_songs = sort(map_of_songs)


# puts the the new files into "best_playlist.mpu"

File.open file_playlist, 'w' do |f|
    f.puts map_of_songs
 end

print "complete"

#to explore with for later use
# require 'find'
# mp3_file_paths = []
# Find.find('/Users/Alex_Swann') do |path|
#   mp3_file_paths << path if path =~ /.*\.mp3$/
# end