def shuffle arr
  return arr if arr.length <=1
  #length of array minus 1
  m = (arr.length-1)
  #making an array with a number of digits from 0 to m-1, to become the new index positions
  places = *(0..m)
  shuffled_arr = []
  #in each member of array
  arr.each do |x|
    #makes the new_index a random number from places
    new_index = places.sample
    #deletes i from places so it doens't get used as an index multiple times
    places.delete_at(places.index(new_index))
    #puts x into shuffled_arr at the new random index, i.
    shuffled_arr[new_index] = x
  end
shuffled_arr
end

=begin
PSEUDOCODE
have an array
change the index of the array to a random number
perhaps could create an array which has the same number of digits as length of array with each populated randomly



=end
