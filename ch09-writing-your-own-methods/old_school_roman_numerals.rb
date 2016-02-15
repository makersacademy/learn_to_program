def old_roman_numeral num
    arr = []
    hash = {0 => "M", 1 => "D", 2 => "C", 3 => "L", 4 => "X", 5 => "V", 6 => "I"}
    # iterate over number divisions
    for i in [1000,500,100,50,10]
      num/i > 0 ? arr << num/i : arr << 0
      num -= num/i * i
    end
    num < 5 ? (arr << 0 << num) : (arr << 1 << num % 5)

    # return joined array with arr indices converted to letters
    arr.map.with_index{|x,i| hash.values_at(i) * x}.join
end
