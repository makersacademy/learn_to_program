def roman_to_integer roman
  nums = [1000, "M", 500, "D", 100, "C", 50, "L", 10, "X", 5, "V", 1, "I"]
  total = 0
  roman.upcase!

  roman.each_char.with_index { |c, idx|
    if idx != 0 && nums.index(roman[idx-1]) > nums.index(c)
      total += nums[nums.index(c)-1] - (nums[nums.index(roman[idx-1])-1] * 2)
    else total += nums[nums.index(c)-1]
    end
  }
  total
end

roman_to_integer('XIX')
