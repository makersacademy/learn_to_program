def dictionary_sort arr
    arr2 = arr.map { |word| (word.upcase != word.swapcase ? word + "zzz" : word) }
    arr3 = arr2.map { |word| (word.upcase != word.swapcase ? word.downcase : word) }
    arr4 = arr3.sort.map { |word| (word[-1] == "z" && word[-2] == "z" && word[-3] == "z" ? word.capitalize : word) }
    arr5 = arr4.map { |word| (word[-1] == "z" && word[-2] == "z" && word[-3] == "z" ? word.chop.chop.chop : word) }
    return arr5
end