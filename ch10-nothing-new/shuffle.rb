
=begin
def shuffle(arr)
  shuff_array = []
  array = arr
  
  size = array.count            #sets size to no. of values in array
  shuf_size = size              # sets the variable for the size of the shuffled array to the same as the non shuffled array
  
  
  shuff_array = Array.new(shuf_size)         #creates a new array with each element nil the same size as array
  y = 1
  while y <= array.count                      #iterates over each word in array
    ran = rand(size)                        # generates random no. between 0 and size of array
    shuf_ran = rand(shuf_size)              #generates random no. between 0 and size of shuf_array
    
    while shuff_array[shuf_ran] != nil            # if the value for shuf_ran returns a value that is not nil when substituted into shuf_array generates a new value for ran till this is not the case
        shuf_ran = rand(shuf_size)                #this is probably infinite looping
    end
    
    shuff_array.map! { |x| x == shuff_array[shuf_ran] ? array[ran] : x }         #replaces the element at index shuf_ran in shuf_array (should be nil) with an element at index ran from array
    array.delete_at(ran)                                                        #deletes the value at index ran from array
    size -= 1                                                                   #reduces size by 1 to reflect one less value in array
    y += 1
  end
shuff_array
    
end

puts shuffle([1,2,3,4,5,6,7,8,9,10])

=end

def shuffle arr
  shuf = []

  while arr.length > 0
    # Randomly pick one element of the array.
    rand_index = rand(arr.length)

    # Now go through each item in the array,
    # putting them all into array except for the
    # randomly chosen one, which goes into shuf.
    curr_index = 0
    array = []

    arr.each do |item|
      if curr_index == rand_index
        shuf.push item
      else
        array.push item
      end

      curr_index = curr_index + 1
    end

    # Replace the original array with the new,
    # smaller array.
    arr = array
  end

  shuf
end
