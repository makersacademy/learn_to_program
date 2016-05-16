class Integer
  def to_rom_no
    num = self
    roman_nums = {
      "M"   =>  1000,
      "CM"  =>  900,
      "D"   =>  500,
      "CD"  =>  400,
      "C"   =>  100,
      "XC"  =>  90,
      "L"   =>  50,
      "XL"  =>  40,
      "X"   =>  10,
      "IX"  =>  9,
      "V"   =>  5,
      "IV"  =>  4,
      "I"   =>  1
    }

    os_rom_num = ""

    roman_nums.each do |k, v|
      os_rom_num << k * (num / v)
      num = num % v
    end

    os_rom_num
  end
end

puts 2_999.to_rom_no
