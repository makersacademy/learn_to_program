# My notes before I started going through the solution. I found this one hard to
# understand conceptually.

# sort takes string and palces them in alphabetical order by comparing them
# against each other and splitting them into different containers based one
# whether one is larger than the other

# shuffle aims to place them in an array where no consecutive entries are in
# alphabetical order. Is this different to a random order?
# 
# At this point I looked at the solution and went through it line by line until
# I understood it.

def shuffle arr
   shuf=[]
   while arr.length > 0
    # rand_index gives a random number in a range equal to the length of the array
    # being shuffled.
     rand_index = rand(arr.length)
    # curr_index is a counter for the iterator below
    curr_index = 0
    # new_arr is where all array elements but the randomly selected one are
    # pushed to. after the iterator finishes its first pass over the initial
    # array it pushes the
    # randomly selected element to shuf and then starts again with new_arr.
    new_arr = []
    
    arr.each do |item|
       if curr_index == rand_index
           shuf.push item
        # If the current element happens to be the randomly selected element
        # it pushes it to shuf, then continues to iterate over arr starting with
        # the next item. rand_index remains the same.
        else
            new_arr.push item
        # if the current element has not been selected on this pass it is slotted
        # into new_arr to be randomised on the next pass.
       end 
       
       curr_index = curr_index + 1
       # This increments the counter by one. When the counter equals the 
       # randomly generated number, the currently selected array element is
       # pushed to shuf.
    end
    arr=new_arr
    # This passes the array containing all elements that have not yet been
    # randomly selected back into the start of the iterator.
   end
   shuf
   # This returns shuf when shuffle is called.
end

puts (shuffle([1,2,3,4,5,6,7,8,9]))