NUMERALS = {
  "M" => 1000,
  "D" => 500,
  "C" => 100,
  "L" => 50,
  "X" => 10,
  "V" => 5,
  "I" => 1
}

def roman_to_integer(roman)
  # your code here
  rom = []
  roman = roman.downcase
  rom << '4'   and roman.gsub!("iv", "") if roman.include?("iv")
  rom << '9'   and roman.gsub!("ix", "") if roman.include?("ix")
  rom << '40'  and roman.gsub!("xl", "") if roman.include?("xl")
  rom << '90'  and roman.gsub!("xc", "") if roman.include?("xc")
  rom << '400' and roman.gsub!("cd", "") if roman.include?("cd")
  rom << '900' and roman.gsub!("cm", "") if roman.include?("cm")
  roman = roman.upcase.split("")
  roman.each do |roman|
    rom << NUMERALS[roman]
  end
  rom.map(&:to_i).inject(:+)
end


p roman_to_integer('iv')
