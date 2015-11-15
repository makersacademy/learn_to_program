def roman_numeral num
  final_number = []
  thousands = num / 1000
  hundreds = num % 1000 / 100
  tens =  num % 100 / 10
  unity =  num % 10


    # M (1000)
    final_number << 'M'*thousands

    # C / D
      if hundreds == 9
        final_number << 'CM'
      elsif hundreds == 4
        final_number << 'CD'
      else
        final_number << 'D'* (num % 1000 / 500)
        final_number << 'C'* (num % 500 / 100)
      end
      # X / L
      if tens == 9
        final_number << 'XC'
      elsif tens == 4
        final_number << 'XL'
      else
        final_number << 'L'* (num % 100 / 50)
        final_number << 'X'* (num % 50 / 10)
      end
      # V / I
        if unity == 9
          final_number << 'IX'
        elsif unity == 4
          final_number << 'IV'
        else
          final_number << 'V'* (num % 10 / 5)
          final_number << 'I'* (num % 5 / 1)
        end

      final_number.join('')
  end


puts "369 is #{roman_numeral 369}"
puts "120 is #{roman_numeral 120}"
puts "34 is #{roman_numeral 34}"
puts "12 is #{roman_numeral 12}"
puts "67 is #{roman_numeral 67}"
