def recursive_shuffle(ary, res = [])
    return res if ary.empty?
    index = rand(0...ary.length)
    res << ary[index]
    ary.delete_at index
    recursive_shuffle(ary, res)
end

def shuffle(ary)
    recursive_shuffle(ary)
end
