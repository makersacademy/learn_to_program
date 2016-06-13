def shuffle arr

n = arr.length

arr.insert(rand(0..(arr.length)), arr.pop)

n = n - 1

arr.shuffle

puts arr.compact

end


shuffle ["1","2","3","4","5","6","7","8"]
