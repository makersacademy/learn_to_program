def shuffle arr

shuffled = []
    
while arr.length > 0
    
    index = rand(arr.length)
    num = arr[index]
    arr.delete(num)

    shuffled.insert(rand(arr.length), num)
    
end
    shuffled.compact
end

print shuffle(['apple','garden','pear','table', 'fence'])
