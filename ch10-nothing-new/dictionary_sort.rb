def dictionary_sort array
    rec_sort(array,[])
end

def rec_sort(ary,ary2)
    return ary2 if ary.length == 0
    temp_array = ary.map{|x| x.upcase}
    ary2 << ary.slice!(temp_array.index(temp_array.min))
    rec_sort(ary,ary2)
end