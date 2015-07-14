#Dictionary Sort - define method to sort alphabetically including capitals/lowercase & ensure it returns original string

def dictionary_sort some_array
  recursive_dictionary_sort some_array, []
end

def recursive_dictionary_sort unsorted_array, sorted_array 
  if unsorted_array != []
    smallest = 'z'
    unsorted_array.each do |word|
      smallest = word if word.downcase < smallest
    end
    sorted_array << smallest
    unsorted_array.delete_at(unsorted_array.index(smallest)) if smallest != nil
    recursive_dictionary_sort unsorted_array, sorted_array
  else
    sorted_array
  end
end

array = ['bob', 'joe', 'timmy', 'Ben', 'ben', 'ilona', 'Ilona']

puts dictionary_sort(array)
