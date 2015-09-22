# Looked up the answer but below is my attempt to write code from memory (with occasional reference) rather than copying
def sort array
  recursive_sort array, []
end

def recursive_sort unsorted, sorted
  if unsorted.length <= 0
    return sorted
  end

  smallest = unsorted.pop
  still_unsorted = []
  unsorted.each { |object|
    if object < smallest
      still_unsorted.push smallest
      smallest = object
    else
      still_unsorted.push object
    end
       }
  sorted.push smallest
  recursive_sort still_unsorted, sorted
end

puts 'Hello, please input words, followed by the enter key. When you have finished, just press enter.'
words = gets.chomp
words_list = Array.new

while words != ''
  words_list.push words
  words = gets.chomp
end

puts sort(words_list)