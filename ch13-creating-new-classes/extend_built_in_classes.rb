class Integer
  def to_roman
    num = self
    
    roman_nums = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1
    }

    os_rom_num = ""

    roman_nums.each do |k, v|
      os_rom_num << k * (num / v)
      num = num % v
    end

    os_rom_num
  end

  def factorial(num=self)
    return 'You can\'t take the factorial of a negative number!' if num < 0
    if num <= 1
      1
    else
      num * factorial(num-1)
    end
  end
end
