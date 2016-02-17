def shuffle arr
    shuffled = []
    shuffled << arr[rand(arr.length)]
    arr.delete(shuffled.last)
    if arr.length > 0
        shuffle arr
    end
    return shuffled
end