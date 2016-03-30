def roman_to_integer string
  string.upcase!

  numerals_hash = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  exceptions = {"IV" => "IIII", "IX" => "IIIIIIIII", "XL" => "XXXX", "XC" => "XXXXXXXXX", "CD" => "CCCC", "CM" => "CCCCCCCCC"}

int = 0
  while int < string.length
    if exceptions.keys.include? "#{string[int]}#{string[int+1]}"
      string.sub!("#{string[int]}#{string[int+1]}", exceptions["#{string[int]}#{string[int+1]}"])
    end
    int += 1
  end

  int = 0
  string.chars.each do |char|
    if numerals_hash.keys.include? char
      int = int + numerals_hash[char]
    else
      return "Not a valid roman numeral!"
    end
  end
   int
end
