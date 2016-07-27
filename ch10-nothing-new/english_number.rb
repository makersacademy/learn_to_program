def english_number number
  return "Please enter a positive number" if number < 0
  return "zero" if number == 0
  return "Please enter a number smaller than 1,000,000,000,000,000" if number >= 1000000000000000

  number_string = ""

  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight",
    "nine"]
  tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty",
    "ninety"]
  teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen",
    "sixteen", "seventeen", "eighteen", "nineteen"]
  hundreds = ["one hundred", "two hundred", "three hundred", "four hundred",
    "five hundred", "six hundred", "seven hundred", "eight hundred",
    "nine hundred"]

    if number >= 1000000000000
      if (number / 100000000000000) > 0
        number_string << hundreds[(number / 100000000000000) - 1]
        if number % 100000000000000 / 1000000000000 > 0
        number_string << " and "
        end
      end
      if number % 100000000000000 / 10000000000000 == 1
        number_string << teens[number % 10000000000000 / 1000000000000]
      elsif number % 100000000000000 / 10000000000000 > 0
        number_string << tens[(number % 100000000000000 / 10000000000000) - 2]
      end
      if number % 100000000000000 / 10000000000000 == 1
        number_string << ""
      elsif number % 10000000000000 / 1000000000000 == 0
        number_string << ""
      elsif (number % 100000000000000 / 10000000000000 > 1) && (number % 10000000000000 / 1000000000000 > 0)
        number_string << "-" + ones[number % 10000000000000 / 1000000000000 - 1]
      elsif (number % 100000000000000 / 10000000000000 == 0) && (number % 10000000000000 / 1000000000000 > 0)
        number_string << ones[number % 10000000000000 / 1000000000000 - 1]
      end
      number_string << " trillion "
    end

    if number >= 1000000000
      if (number % 1000000000000 / 100000000000) > 0
        number_string << hundreds[(number % 1000000000000 / 100000000000) - 1]
        if number % 100000000000 / 1000000000 > 0
        number_string << " and "
        end
      end
      if number % 100000000000 / 10000000000 == 1
        number_string << teens[number % 10000000000 / 1000000000]
      elsif number % 100000000000 / 10000000000 > 0
        number_string << tens[(number % 100000000000 / 10000000000) - 2]
      end
      if number % 100000000000 / 10000000000 == 1
        number_string << ""
      elsif number % 10000000000 / 1000000000 == 0
        number_string << ""
      elsif (number % 100000000000 / 10000000000 > 1) && (number % 10000000000 / 1000000000 > 0)
        number_string << "-" + ones[number % 10000000000 / 1000000000 - 1]
      elsif (number % 100000000000 / 10000000000 == 0) && (number % 10000000000 / 1000000000 > 0)
        number_string << ones[number % 10000000000 / 1000000000 - 1]
      end
      number_string << " billion "
    end

    if number >= 1000000
      if (number % 1000000000 / 100000000) > 0
        number_string << hundreds[(number % 1000000000 / 100000000) - 1]
        if number % 100000000 / 1000000 > 0
        number_string << " and "
        end
      end
      if number % 100000000 / 10000000 == 1
        number_string << teens[number % 10000000 / 1000000]
      elsif number % 100000000 / 10000000 > 0
        number_string << tens[(number % 100000000 / 10000000) - 2]
      end
      if number % 100000000 / 10000000 == 1
        number_string << ""
      elsif number % 10000000 / 1000000 == 0
        number_string << ""
      elsif (number % 100000000 / 10000000 > 1) && (number % 10000000 / 1000000 > 0)
        number_string << "-" + ones[number % 10000000 / 1000000 - 1]
      elsif (number % 100000000 / 10000000 == 0) && (number % 10000000 / 1000000 > 0)
        number_string << ones[number % 10000000 / 1000000 - 1]
      end
      number_string << " million "
    end

    if number >= 1000
      if (number % 1000000 / 100000) > 0
        number_string << hundreds[(number % 1000000 / 100000) - 1]
        if number % 100000 / 1000 > 0
        number_string << " and "
        end
      end
      if number % 100000 / 10000 == 1
        number_string << teens[number % 10000 / 1000]
      elsif number % 100000 / 10000 > 0
        number_string << tens[(number % 100000 / 10000) - 2]
      end
      if number % 100000 / 10000 == 1
        number_string << ""
      elsif number % 10000 / 1000 == 0
        number_string << ""
      elsif (number % 100000 / 10000 > 1) && (number % 10000 / 1000 > 0)
        number_string << "-" + ones[number % 10000 / 1000 - 1]
      elsif (number % 100000 / 10000 == 0) && (number % 10000 / 1000 > 0)
        number_string << ones[number % 10000 / 1000 - 1]
      end
      number_string << " thousand "
    end

    if number > 0
      if (number % 1000 / 100) > 0
      number_string << hundreds[(number % 1000 / 100) - 1]
        if number % 100000 / 1000 > 0
      number_string << " and "
        end
      elsif (number % 1000 / 100 == 0) && (number >= 1000)
        number_string << "and "
      end
      if number % 100 / 10 == 1
        number_string << teens[number % 10]
      elsif number % 100 / 10 > 0
        number_string << tens[(number % 100 / 10) - 2]
      end
      if number % 100 / 10 == 1
        number_string << ""
      elsif number % 10 == 0
        number_string << ""
      elsif (number % 100 / 10 > 1) && (number % 10 > 0)
        number_string << "-" + ones[(number % 10) - 1]
      elsif (number % 100 / 10 == 0) && (number % 10 > 0)
        number_string << ones[number % 10 - 1]
      end

    end

    return number_string
end
