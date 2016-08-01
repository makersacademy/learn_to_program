class Integer
  def shuffle
    arr = self
      x = arr.length
      new_arr = []
      while x != 0
        randpos = rand(x)
        x = x-1
        item = arr[randpos]
        new_arr.push item
        arr[randpos] = arr[x]
        arr.pop
      end

      arr = new_arr
    end

  def factorial
    if self <= 1
      return 1
    else
    (1..self).inject(:*)
  end

  def to_roman
    new_roman = self
    letter_num = [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100],
    ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]

    out = ""
    letter_num.each do |arr|
        l = arr[0]
        n = arr[1]
      out << l*(new_roman / n)
      new_roman = new_roman %  n
    end
    return out
  end
end
end