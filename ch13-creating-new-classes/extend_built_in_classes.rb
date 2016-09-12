class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman

  roman_numeral = ''

  roman_numeral = roman_numeral + 'M' * (self / 1000)

  roman_numeral = roman_numeral + 'D' * (self % 1000 / 500)

  roman_numeral = roman_numeral + 'C' * (self % 500 / 100)

  roman_numeral = roman_numeral + 'L' * (self % 100 / 50)

  roman_numeral = roman_numeral + 'X' * (self % 50 / 10)

  roman_numeral = roman_numeral + 'V' * (self % 10 / 5)

  roman_numeral = roman_numeral + 'I' * (self % 5 / 1)

  roman_numeral
  end
end

class Array
  def shuffle
    arr = self

    shuf = []

    while arr.length > 0
      random_index = rand(arr.length)
      current_index = 0
      new_arr = []

      arr.each do |i|
        if current_index == random_index
          shuf.push i
        else
          new_arr.push i
        end
        current_index = current_index + 1
      end
      arr = new_arr
    end
    shuf
  end
end

puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman
