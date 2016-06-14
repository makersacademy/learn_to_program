puts "Type some words"
response = nil
words = []
while response != ""
  response = gets.chomp.capitalize
  words << response
end

def sort(arr)
  rec_sort(arr,[])
end

def rec_sort(unsorted,sorted)
  if unsorted.length <=0
    return sorted
  end
  smallest = unsorted.pop
  still_unsorted =[]

  unsorted.each do |n|
    if n < smallest
      still_unsorted << smallest
      smallest = n
    else
      still_unsorted << n
    end
  end

  sorted << smallest
  rec_sort(still_unsorted,sorted)
end

puts(sort(words))
