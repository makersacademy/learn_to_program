def dictionary_sort array
  recursive_dictionary_sort array, []
end

def recursive_dictionary_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each { |object|
    if object.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
       }
  sorted.push smallest
  recursive_dictionary_sort still_unsorted, sorted
end

puts 'Hello, please input words, followed by the enter key. When you have finished, just press enter.'
words = gets.chomp
words_list = Array.new

while words != ''
  words_list.push words
  words = gets.chomp
end

puts dictionary_sort(words_list)