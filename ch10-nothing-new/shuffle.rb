def shuffle arr
  array.shuffle!
end

puts "Enter word (or press return to shuffle)"
array = []
while true
  userWord = gets.chomp.capitalize
  break if userWord.empty?
  array << userWord
end
puts "Here are you words all shuffled up -"
puts array.shuffle!