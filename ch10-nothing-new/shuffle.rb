def shuffle arr
  recursive_shuffle arr, []
end

def recursive_shuffle unshuffled, shuffled
  if unshuffled.length <= 0
    return shuffled
  end

  still_unshuffled = []
  unshuffled.each { |object|

    if rand < 0.5
      still_unshuffled.push object

    else
      shuffled_word = object
      shuffled.push shuffled_word
    end
       }

  recursive_shuffle still_unshuffled, shuffled
end

puts 'Hello, please input words, followed by the enter key. When you have finished, just press enter.'
words = gets.chomp
words_list = Array.new

while words != ''
  words_list.push words
  words = gets.chomp
end

puts shuffle(words_list)