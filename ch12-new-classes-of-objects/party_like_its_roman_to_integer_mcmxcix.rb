def roman_to_integer(roman)
  roman_nums = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  prev = 0
  total = 0

  roman.reverse.upcase.each_char do |chr| # reverse for subtraction IX = 9
    if roman_nums.key?(chr)
      num = roman_nums[chr]

      if num < prev
        num *= -1
      else
        prev = num
      end
    end

    total += num
  end

  total
end
