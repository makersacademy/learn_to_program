=begin
puts "Type some words"
response = nil
words = []
while response != ""
  response = gets.chomp
  words << response
end
=end
def dictionary_sort(arr)
  rec_dict_sort(arr,[])
end

def rec_dict_sort(unsorted,sorted)
  if unsorted.length <=0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted =[]

  unsorted.each do |n|
    if n < smallest
      still_unsorted << smallest.downcase
      smallest = n
    else
      still_unsorted << n
    end
  end

  sorted << smallest
  rec_dict_sort(still_unsorted,sorted)
end

#puts(dictionary_sort(words))
