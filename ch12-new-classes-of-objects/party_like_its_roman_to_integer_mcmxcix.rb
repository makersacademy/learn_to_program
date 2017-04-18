# Party like it’s roman_to_integer 'mcmxcix'! Come on, you knew it was coming,
# didn’t you? It’s the other half of your roman_numeral 1999 method. Make sure
# to reject strings that aren’t valid Roman numerals.


def roman_to_integer roman

  roman_values = {'i'=>1,
                  'v'=>5,
                  'x'=>10,
                  'l'=>50,
                  'c'=>100,
                  'd'=>500,
                  'm'=>1000}

  total = 0
  prev = 0
  index = roman.length - 1

  while index >= 0
    x = roman[index].downcase
    index = index - 1
    val = roman_values[x]
    if !val
      puts 'This is not a valid roman numeral!'
      return
    end

    if val < prev
      val = val * -1
    else
      prev = val
    end
    total = total + val
  end

  total


end
