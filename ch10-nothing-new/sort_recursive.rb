# this is a working progress LOL

$LETTERS = [*'a'..'z']


def sort(unsorted_array, sorted_array = [])
  return sorted_array unless unsorted_array.length > 0
  d_array = unsorted_array.map(&:downcase)
  p smallest = unsorted_array.min {|a,b| a.size <=> b.size }
  #p alphabetical = unsorted_array.map(&:chars).map{|x| x.map{|y| $LETTERS.index(y.downcase)}}.select{|x| x[0]}


  unsorted_array.each {|e| sorted_array << e if e == smallest}
  unsorted_array.delete(smallest)
  sort(unsorted_array, sorted_array)
end

p sort(["Hey", "hey","How", "are", "bugger", "Bottoms"])