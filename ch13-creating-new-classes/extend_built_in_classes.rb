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

      number = String.new

      number_array = num.to_s.split('')


      thousands = number_array[0..-4].join('').to_i
      thousands.times do |n|
        number << "M"
      end

      hundereds = number_array[-3].to_i * 100

      if hundereds >= 500
        number << "D"

        until hundereds == 500
          number << "C"
          hundereds -= 100
        end
      else
        hundereds = hundereds / 100
        hundereds.times do |n|
          number << "C"
        end
      end

      tens = number_array[-2].to_i * 10

      if tens >= 50
        number << "L"

        until tens == 50
          number << "X"
          tens -= 10
        end

      else
          tens = tens / 10
          tens.times do |n|
            number << "X"
          end
      end


      singles = number_array[-1].to_i
      if singles >= 5
        number << "V"
        until singles == 5
          number << "I"
          singles -= 1
        end

      else
        singles.times do |n|
          number << "I"
        end
      end
      return number
  end
end
