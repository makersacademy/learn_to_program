def shuffle (array)
  n = array.length
  shuffled = Array.new(n)
  shuffled.fill{|x| (array[rand(n)])}
  short_shuffle = shuffled.uniq!
  remainders = array - short_shuffle
  short_shuffle << remainders
  puts short_shuffle
end

shuffle([1,2,3,4,5,6,7,8,9])
