def english_number number
  ones = %w(zero one two three four five six seven eight nine)
  teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  beyond = %w(thousand million billion trillion)


  left = number
  @string = ''

  if number == 0
    return "zero"
  end

  if left / 1000 > 0
    p thousands = left / 1000
    p left = left - thousands * 1000
    @string <<  ones[thousands] + " thousand "
  end

  if left > 99
    huneds = left / 100
    left = left - 100 * huneds
    @string << ones[huneds] + " hundred"
    @string << ' ' if left > 0
  end

  if left > 19
    tensplace = left/10
    left = left - 10 * tensplace
    @string << tens[tensplace - 1]
    @string << "-" if left > 0
  end

  if left < 20 && left > 9
    @string << teens[left % 10]
    left = 0
  end

  if left > 100
    @string << " "
  end

  @string << ones[left] unless left == 0

  @string
end




# def doer (number, param, letter)
#   left = number
#   if number / param > 0
#     amount_of = number / param
#     left = number - amount_of * param
#     @string << english_number(amount_of) + letter
#     left
#    end
# end
#
#
# doer(number, 100000, "million")
# doer(left, 1000, " thousand ")
