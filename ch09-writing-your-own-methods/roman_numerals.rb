def roman_numeral num
    roman_nums = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90, 
    "L" => 50, 
    "XL" => 40, 
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
    }
    amt = 0
    roman_nums.map do |ltr, val|
        amt, num = num.divmod(val)
        ltr * amt
    end.join
end