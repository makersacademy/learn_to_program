def sort arr
 #["d", 'a', 'c', 'b']
  to_sort = []
  sorted = []


while arr.length >= 1
  smallest = arr.pop

    arr.each do |word|
      if smallest < word == true
        to_sort << word
      else
        to_sort << smallest
        smallest = word
      end
    end

    sorted << smallest
    arr = to_sort
    to_sort = []


  end
  sorted
end

test = ["a", 'd', 'c', 'b']

p sort test
