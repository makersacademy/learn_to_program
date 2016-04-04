def roman_to_integer roman
  # your code here
  digit_vals = {'i' => 1,
                'v' => 5,
                'x' => 10,
                'l' => 50,
                'c' => 100,
                'd' => 500,
                'm' => 1000}
  total = 0
  prev = 0
  roman.reverse.each_char do |x|
    val = digit_vals[x.downcase]
    return 'This is not a valid roman numeral!' if !val

    val < prev ? val *= -1 : prev = val
    total += val
  end

  total
end          
