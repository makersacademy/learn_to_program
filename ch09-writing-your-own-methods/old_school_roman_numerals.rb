def old_roman_numeral num
  roman = ''    # set roman variable to equal 'blank' string

  roman = roman + 'M' * (num / 1000)   # If 'num' is less than 1000, 'M' will be * by 0, adding no M to variable 'roman'
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100) # Take away the last milestone (500's) divide by 100 to give us the amount of 'C's we need.
                                            #     eg. 500 goes into '2700' 5 times with 200 left over! %(modulus) gives us that 200
                                            #         200 / 100 = 2      'C' * 2
                                            # Because we are using to_i and not to_f when we divide, we get a nice whole number to work with.
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)

    puts num.to_s + ' as a Roman numeral = ' + roman.to_s  # We could simply just put roman at the end of the method if we just want to display the answer.
end

puts 'Give me a number between 1 and 3000 to convert it into a roman numeral:'
reply = gets.chomp.to_i

  if reply <= 3000
    puts old_roman_numeral reply
  else
    puts "That isn't between 1 and 3000! Maybe next time."
  end
