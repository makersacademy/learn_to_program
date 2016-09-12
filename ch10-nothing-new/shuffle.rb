def shuffle arr
  arr.shuffle(random: Random.new(1))
end

puts(shuffle([1,2,2,5,6,7,7,7,8,8,9,9,9,9,9]))
