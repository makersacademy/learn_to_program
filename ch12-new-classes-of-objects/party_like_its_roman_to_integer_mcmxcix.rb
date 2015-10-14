def roman_to_integer roman

  numberTrans={
                "M" => 1000,
                "D" => 500,
                "C" => 100,
                "L" => 50,
                "X" => 10,
                "V" => 5,
                "I" => 1
              }

  roman = roman.upcase

  possibleRoman = "IVXLCDM"
  checkRoman = 0
  roman.chars.each {|letter| checkRoman +=1 if !possibleRoman.include?(letter)}

  if checkRoman > 0
    puts "Included #{checkRoman} non-roman numerals"
    return 0
  end

  number = 0
  oldRoman_to_newRoman(roman).chars.each {|letter| number += numberTrans[letter]}
  number
end


def oldRoman_to_newRoman roman
 oldRoman={
    "DCCCC" => "CM",
    "CCCC" => "CD",
    "LXXXX" => "XC",
    "XXXX" => "XL",
    "VIIII" => "IX",
    "IIII" => "IV"
  }
  oldRoman.each do |long,short|
    roman.gsub!(/#{short}/,short => long)
  end
  roman.to_s
end
