collection = []
puts "Type a word and hit enter. Keep doing it until you're out of words, then just hit enter. Then I'll show you all the words in alphabetical order :)"
collection.push(gets.chomp)
basket = []
sorted_words = []
still_unsorted = []
space = []

def sort_words parameter
candidate = collection[0]
collection.delete_at_[0]
space.push(candidate)

collection.each do |x|
	if candidate < x
		collection.delete(x)
		still_unsorted.push(x)
	elsif x < candidate
		space.pop
		basket.push(x)
		sort_words(parameter)

	break if collection.length == 1
end
	if collection.length == 1
		sorted.push(collection[0])




def check_position array
	words.each do |tested_object|
		if tested_object < last_element
			still_unsorted.push last_element
			last_element = tested_object
		else
			still_unsorted.push tested_object
		end
	end



	checked_words.push(words[0])
for i in 0...words.length
  if words[i] > words[i+1]
  	checked_words.pop
  	checked_words.push(words[x+1])
  	words.delete_at_(x+1)
  else

  words.push(input)
  break if input==''
end


puts words