def shuffle arr
  shuffled = []
  (arr.length).times { 
    shuffled << arr.delete_at(rand(0..arr.length-1)) }
  shuffled	
end

puts shuffle([ "hello", "my", "name", "is", "edward"])