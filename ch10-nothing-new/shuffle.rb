def shuffle arr
shuffled = []
while arr.length > 0

    index = rand(arr.length)
curr_index = 0
new_arr = []
arr.each do |item|
if curr_index == index
        shuffled.push item
else
        new_arr.push item
end
      curr_index = curr_index + 1
end
arr = new_arr
end
shuffled
end
