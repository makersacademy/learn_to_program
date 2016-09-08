def shuffle arr
shuf = []

while arr.length > 0

rand_index = rand(arr.length)

curr_index = 0
new_arr = []

arr.each do |item|
if rand_index == curr_index
  shuf.push item
else
  new_arr.push item
end

curr_index += 1
end

arr = new_arr
end

shuf
end

puts shuffle([1, 6, 2, 4, 9])
