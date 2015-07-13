def roman_to_integer roman
  roman = roman.downcase
  dictionary = {
    "i" => 1,
    "v" => 5,
    "x" => 10,
    "l" => 50,
    "c" => 100,
    "d" => 500,
    "m" => 1000,
    "iv" => 4,
    "ix" => 9,
    "xl" => 40,
    "xc" => 90,
    "cd" => 400,
    "cm" => 900
  }
  roman.each_char do |c|
    if !dictionary[c]
      puts "Sorry, that isn't a valid Roman Numeral - try again!"
      exit
    end
  end
  num = 0
  translating_char = -1
  while translating_char > (roman.length * -1)
    if dictionary[(roman[(translating_char -1)..translating_char])] != nil
      num += dictionary[(roman[(translating_char - 1)..translating_char])]
      translating_char -= 2
    else
      num += dictionary[(roman[translating_char])]
      translating_char-=1
    end
  end
  num += dictionary[(roman[translating_char])]
  translating_char -= 1
  num
end