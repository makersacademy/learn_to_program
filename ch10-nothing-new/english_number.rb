def tens_converter number
  under_20 = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  tens = ["","","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  if number < 20
    under_20[number]
  else
    tens[number / 10] + ( number % 10 > 0 ? ( '-' + under_20[number % 10]) : '' )
  end
end

def magnitude_converter number
  magnitude = {   2 => 'Hundred'  ,   3 => 'Thousand'  ,   6 => 'Million'  ,   9 => 'Billion'  ,   12 => 'Trillion'  ,   15 => 'Quadrillion'  ,   18 => 'Quintillion'  ,   21 => 'Sextillion'  ,   24 => 'Septillion'  ,   27 => 'Octillion'  ,   30 => 'Nonillion'  ,   33 => 'Decillion'  ,   36 => 'Undecillion'  ,   39 => 'Duodecillion'  ,   42 => 'Tredecillion'  ,   45 => 'Quattuordecillion'  ,   48 => 'Quindecillion'  }
  
  converted_number = String.new
if number < 100
    ' ' + tens_converter(number)
  else
    magnitude.keys.reverse_each do |key|
      value = number / ( 10 ** key)
      if value > 0
        converted_number = magnitude_converter(value) + ' ' + magnitude[key] + magnitude_converter(number % (10 ** key))
        break
      end
    end
    converted_number
  end
end

def english_number number
  if number == 0
    'zero'
  else
    magnitude_converter(number).downcase.strip
  end
end