def sort arr
  rec_sort arr, []
end

def rec_sort unsorted, sorted
if unsorted.length <= 0 # so this is the bottom for our recursive method
  return sorted
end

smallest = unsorted.pop
still_unsorted = [] # this is what I was missing!

# now no need for a score variable to keep track
# score = 0
unsorted.each do |tested_object| # here's where I'm stealing from Pine after grappling
      if tested_object < smallest
        still_unsorted.push < smallest
        smallest = tested_object # okay, following this now, as in next iteration
        # tested object will be the next in the array, and will be being compared
        # to what we were just comparing...er...actually, maybe this is an instance
        # where the code is easier to read than text. Maybe need a flow diagram?
      else
      still_unsorted.push tested_object # so this is our third array. a holder for
      # nything that wasn't the smallest
    end
  end

  sorted.push smallest

  rec_sort still_unsorted, sorted #crafty!
end









# first attempt below, which failed - was only using one variable as the test subject, and not making an extra unsorted array  and
# then trying to iterate through the remaining elements in the unsorted array, resulting
# in ugly nested loops.
# def sort arr# your code here
# end
=begin
unsorted = ['taste', 'food', 'beagle', 'apple', 'woodchuck']
sorted = []

while unsorted.length > 1 do
  testee = unsorted.shift
  score = 0
    unsorted.each do |word|
      if testee < word
        score +=1
      end
      if score == unsorted.length
        sorted << testee
      else
        unsorted << testee
      end
end
end

puts unsorted
puts
puts sorted
=end



# we have an unsorted array of X elements
# we remove our first element from unsorted array
# compare that to each element of our unsorted array (num of elements is now X-1)
# if it is smaller than all of those elements, we push it into sorted array
# if it is larger, we put it back into unsorted
# this keeps going until unsorted array = zero entries
