class Integer

  # Extending built-in class Integer
  def factorial

    # Return quickly for 1 and 0
    if self <= 1
      return 1
    end

    # Else, calculate factorial here
    factorial = 1

    for i in 1..self do
      # puts "i is #{i} and factorial is #{factorial}"
      factorial = factorial * i
    end

    factorial
  end

  # Extending built-in class Integer
  def to_roman

    # Initialise Roman string. It looks like I'm allowed to use "old school" ones, e.g. additive only.
    roman = ''

    # Keep a local varable for the amount of Arabic numeral left to write out.
    arabic = self

    # Use an array to capture all the substitute values.
    romanArray = [ ['M', 1000], ['D', 500], ['C', 100], ['L', 50], ['X', 10], ['V', 5], ['I', 1] ]

    romanArray.each do |i|

      while arabic >= i[1]
        roman = roman + i[0]
        arabic = arabic - i[1]
      end

    end

  roman
  end

end

puts 3.factorial

puts 1019.to_roman