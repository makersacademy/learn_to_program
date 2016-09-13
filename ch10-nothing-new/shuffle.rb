=begin
Defining perfect shuffle as one where no card happens after the same card it did before.
Implementation here inspired by the "faro in-shuffle"
=end

def shuffle arr
  #split the array in two
  left, right = arr.each_slice((arr.size/2.0).round).to_a
  
  #generate new array where the two arrays intertwine
  i = 0
  shuffled = []
  while i < right.length
    shuffled << left[i]
    shuffled << right[i]
    i += 1
  end
  shuffled << left[i] if i < left.length # for case when arr.length is odd
  
  return shuffled
  
end

puts shuffle([1,2,3,4,5]).to_s
puts shuffle([10,20,30,40]).to_s