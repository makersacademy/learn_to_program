# Write a shuffle method that takes an array and returns a totally shuffled version.

def shuffle arr
shuffle = []
x = shuffle.length
a = arr.length
  until x == a
    p = arr[(rand(a))]
    unless shuffle.include? p
      shuffle.push(p)
    end
    x = shuffle.length
   end
arr = shuffle
return arr
end

arr = [1,2,3,4,5]

shuffle(arr)
