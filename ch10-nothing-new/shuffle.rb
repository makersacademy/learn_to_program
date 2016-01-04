
def shuffle arr
  random_store = []
  for i in 0..(arr.length-1)
    position = rand(arr.length)
    random_store.push(arr[position])
    arr[position] = nil
    arr.compact!
  end
  random_store
end

p shuffle ['a','b','c','d','e','f','g','h']

#To test the shuffle any given entry in the array should be evenly distributed
#when the shuffle is repeated many times

def test
  frequency = Hash.new(0)
  1000.times {
    shuff_array = shuffle ['a','b','c','d','e','f','g','h']
    i = 0
    shuff_array.each {|x|
      frequency[i] += 1 if x == 'a'
      i += 1
    }
  }
  p frequency
  p frequency.sort
  
  puts "'a' location:   1st   2nd   3rd   4th   5th   5th   7th   8th"
  puts "frequency   :   #{frequency[0]}   #{frequency[1]}   #{frequency[2]}   #{frequency[3]}   #{frequency[4]}   #{frequency[5]}   #{frequency[6]}   #{frequency[7]}"
end

test