class Array
  def shuffle
    arr = self

    mixed = []

    return mixed if arr.length < 1

    while arr.length > 0

      random = rand(arr.length)
      intro = 0
      rest_arr = []

      arr.each do |object|
        if intro == random
          mixed.push object
        else
          rest_arr.push object
        end

        intro += 1
      end

      arr = rest_arr
    end

    mixed
  end
end

class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman

    num = self

    numerals = {1000 => "M",
                500  => "D",
                100  => "C",
                50   => "L",
                10   => "X",
                5    => "V",
                1    => "I"}

    old_roman = ''

    numerals.each do |key,value|
      amount = num / key
      rest = num % key

      if amount > 0
        letters = value * amount
        old_roman = old_roman + letters
      end

      num = rest
    end

    old_roman
  end
end
=begin
puts [1,2,3,4,5].shuffle
puts 7.factorial
puts 73.to_roman
=end