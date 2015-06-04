
words = []
  puts "Type a word and hit enter. Keep doing it until you're out of words, then just hit enter. Then I'll shuffle them and write them out in a new order :)"

  while true
    input = gets.chomp
    words.push(input)
    break if input==''
  end




def shuffle(array)
  shuffled = []

  while array.length > 0
    
    x = rand(array.length).to_i
    
    shuffled.push(array[x])
    array.delete_at(x)
    
  end
  puts shuffled
end

puts shuffle(words)

