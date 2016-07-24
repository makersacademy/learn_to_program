# Extend factorial

class Integer
  def factorial
    if self  < 0
        return "Watch out - you can't make a factorial of this!"
    end

    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end
end

puts(25.factorial)

# Extend shuffle

class Array
  def shuffle

    arrToShuffle = self
    randomArr = []

    while arrToShuffle.length > 0
      randNum = rand(0..arrToShuffle.length)

      index = 0
      resultsArr = []

      arrToShuffle.each do |x|
        if index == randNum
          randomArr.push x
        else
          resultsArr.push x
        end
      index = index + 1
      end
      arrToShuffle = resultsArr

    end

    return randomArr
  end
end

myArr = ["hello","goodbye", "dog", "xenophobic", "Ruby","London", "magic"]

puts(myArr.shuffle)

# Extend roman numeral

class Integer
  def roman_numeral
    results = ''
    results = results + 'M' * (self / 1000)
    results = results + 'D' * (self % 1000 / 500)
    results = results + 'C' * (self % 500 / 100)
    results = results + 'L' * (self % 100 / 50)
    results = results + 'X' * (self % 50 / 10)
    if (self % 10 == 9)
        results = results + 'IX'
        return results
    elsif (self % 10 == 4)
        results = results + 'IV'
        return results
    else
        results = results + 'V' * (self % 10 / 5)
        results = results + 'I' * (self % 5)
        return results
    end

    results
  end
end

puts(1999.roman_numeral)
