def roman_to_integer roman
  digit_vals = {'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000
  }

      nums = roman.downcase.split('').map do |r|
        r = digit_vals.select{|k,v| r==k }
        numbers_array = r.values.join.to_i
      end

      nums.map.with_index do |n,i|
       if  n > nums[i-1] && i > 0
         n - (nums[i-1]*2)
      else
        n
      end
    end.inject(:+)
end

p roman_to_integer('MDCLIV')
