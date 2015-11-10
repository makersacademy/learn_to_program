def shuffle arr
return arr if arr.length <= 1

shuffle_array = []

while arr.length > 1
shuffle_array << arr.delete_at(rand(arr.length-1))
end
shuffle_array += arr

end
