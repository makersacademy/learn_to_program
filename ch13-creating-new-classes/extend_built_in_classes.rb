class Integer

    def factorial
      if self <= 1
        1
      else
        self * (self-1).factorial
      end
    end
  def old_roman_numeral num

    converted = ""

    converted << "M" * (num / 1000)
    converted << "D" * (num % 1000 / 500)
    converted << "C" * (num % 500 / 100)
    converted << "L" * (num % 100 / 50)
    converted << "X" * (num % 50 / 10)
    converted << "V" * (num % 10 / 5)
    converted << "I" * (num % 5 / 1)

    converted

  end
end

class Array
  def shuffle arr
    new_arr = []

    while (arr.any?) do
      new_arr << arr.delete_at(rand(arr.length))
    end

    new_arr
  end
end
