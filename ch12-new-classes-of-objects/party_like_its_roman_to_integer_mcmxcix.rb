def roman_to_integer roman
  # if roman.include?(/[MDCLXVI]/) != true
  #   puts "This only works for roman numerasl, pls try again."
  # end

  # create a hash to match roman numerals to the correct digits

  r_to_i = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  }

  # split the roman up into it's constituent parts
  input = roman.upcase.split("")

  # counters to keep track of my sum
  total = 0
  current = 0
  previous = 0

  # loop to run through the array and sum up the right numbers
  input.reverse.each do |x|

    current = r_to_i[x.to_sym] # key for the hash to fetch the right value
    if current == nil   # check for valid Roman numerals
      puts "Can't compute, this is not a valid Roman Numeral"
      return
    end
    if current < previous
      current = current * -1
    else
      previous = current
    end
    total += current

  end

  return total

end

roman_to_integer("CCCLXV")
