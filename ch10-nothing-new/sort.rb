def recursive_sort(ary, res = [])
    return res if ary.empty?
    1.upto(ary.length - 1) do |i|
        if ary[i] < ary[0]
            ary[0], ary[i] = ary[i], ary[0]
        end
    end
    res << ary.shift
    recursive_sort(ary, res)
end

def sort(ary)
    recursive_sort(ary)
end