# def shuffle arr
#     shuffled = []
#     shuffled.push arr[rand(arr.length)]
#     arr.delete(shuffled.last)
#     if arr.length > 0
#         shuffle arr
#     end
#     return shuffled
# end

def shuffle arr
    arr.shuffle
end