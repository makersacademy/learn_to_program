def roman_to_integer roman
  roman_nums = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000
  }

  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    c = roman[index].chr.downcase
    index -= 1
    num = roman_nums[c]

    if !num
      puts "This is not a valid roman numeral."
      return
    end

    if num < prev
      num *= -1
    else
      prev = num
    end

    total += num
  end
  total
end


