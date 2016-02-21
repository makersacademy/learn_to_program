def roman_to_integer roman
  numeral = { 'M' => 1000,
              'D' => 500,
              'C' => 100,
              'L' => 50,
              'X' => 10,
              'V' => 5,
              'I' => 1}

num_ary = []
i = 0
  while i < roman.length
    num_ary << numeral[roman.upcase[i]]
    i+=1
  end
  num_ary = num_ary.reverse
  sum_ary = [] << num_ary.shift

    num_ary.each do |a|
      if a < sum_ary.last
        sum_ary[-1] = sum_ary.last - a
      else
        sum_ary << a
      end
    end
    sum = 0
    sum_ary.each {|element| sum += element}
    p sum
end

(roman_to_integer('mcmxcix'))
(roman_to_integer('CCCLXV'))
