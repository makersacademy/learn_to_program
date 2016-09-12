# Type as many words as we want (one word per line), continuing until we press Enter on an empty line
# Repeat the words back to us in alphabetical order.
# Test program thoroughly.

words = []
puts "Hello, why don't you type some lines? Enter one word per line. When you get fed up, press Enter on an empty line."

userInputEmpty = false

while userInputEmpty == false

  word = gets.chomp

  if word != ""
    words.push word
    puts "How about another word? Leave empty if you're done"

  else
    userInputEmpty = true
  end
end

puts "And here is a lovely alphabetical list of your words!"
puts words.sort
