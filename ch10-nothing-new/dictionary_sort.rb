puts "Type some words"
response = nil
words = Array.new
while response != ""
  response = gets.chomp
  words.push(response)
end

def dictionary_sort(arr)
  dictionary_rec_sort(arr, [])
end

def dictionary_rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object < smallest.downcase
      still_unsorted.push(smallest)
      smallest = tested_object
    else
      still_unsorted.push(tested_object)
    end
  end
  sorted.push(smallest)

  dictionary_rec_sort(still_unsorted, sorted)
end

puts(dictionary_sort(words)).inspect
