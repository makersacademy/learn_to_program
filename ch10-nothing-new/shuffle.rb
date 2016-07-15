#10.3: Shuffle
#=begin
def shuffle(array)
    recursive_shuffle(array, [])
end

def recursive_shuffle(arr, shuffled)
    if arr.length == 0
        return shuffled
    end
    
    num = rand(arr.size)
    shuffled.push(arr[num])
    arr.delete_at(num)
    recursive_shuffle(arr, shuffled)
end
#=end


#list_of_words = ['hello','world','bye','go','ask','peel','apple','hello']
#puts shuffle(list_of_words)