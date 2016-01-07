class Integer

  def english_number

    n = self

    big_numbers = ["thousand", "million", "billion", "trillion", "quadrillion", "quintillion", "sextillion", "septillion", "octillion", "nonillion", "decillion", "undecillion", "duodecillion", "tredecillion", "quattuordecillion", "quindecillion"]

    power = (((n.to_s.length-1)/3)*3)
    big_index = (((n.to_s.length-1)/3)-1)

    if 1 <= n && n <= 19
    ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"][n]
    elsif n%10 == 0 && n < 100
      ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"][n/10]
    elsif n >= 100 && n <= 999
      if n % 100 == 0
      "#{(n/100).english_number} hundred"
      else
      "#{(n/100).english_number} hundred #{(n%100).english_number}"
      end
    elsif n > 999
      if n % 10**power == 0
      "#{(n/10**power).english_number} #{big_numbers[big_index]}"
      else
        "#{(n/10**power).english_number} #{big_numbers[big_index]} #{(n%10**power).english_number}"
      end
    else
      "#{((n/10)*10).english_number}-#{(n%10).english_number}"
    end
  end

  def to_roman

    num = self

    thousands = num / 1000
    hundreds_left = num % 1000
    hundreds = hundreds_left / 100
    tens_left = num % 100
    tens = tens_left / 10
    units = num % 10

    if hundreds >= 5
      five_hundreds = hundreds / 5
      hundreds = hundreds - 5
    else
      five_hundreds = 0
    end

    if tens >= 5
      fifties = tens / 5
      tens = tens - 5
    else
      fifties = 0
    end

    if units >= 5
      fives = units / 5
      units = units - 5
    else
      fives = 0
    end

    return 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens + 'V'*fives + 'I'*units

  end


  def to_new_roman

    num = self

    thousands = num / 1000
    hundreds_left = num % 1000
    hundreds = hundreds_left / 100
    tens_left = num % 100
    tens = tens_left / 10
    units = num % 10

    if hundreds >= 5
      five_hundreds = hundreds / 5
      hundreds = hundreds - 5
    else
      five_hundreds = 0
    end

    if tens >= 5
      fifties = tens / 5
      tens = tens - 5
    else
      fifties = 0
    end

    if units >= 5 && units < 9
      fives = units / 5
      units = units - 5
    else
      fives = 0
    end

    if units == 4
      fours = 1
      units = 0
    else
      fours = 0
    end

    if units == 9
      nines = 1
      units = 0
    else
      nines = 0
    end

    return 'M'*thousands + 'D'*five_hundreds + 'C'*hundreds + 'L'*fifties + 'X'*tens + 'IX'*nines + 'V'*fives + 'IV'*fours + 'I'*units

  end

  def factorial
    num = self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end


end

class Array

  def shuffle

    arr = self

    shuffled_array = []
    while arr.length > 0
      random_index = rand(arr.length)
      current_index = 0
      new_array = []

      arr.each do |e|
        if current_index == random_index
          shuffled_array.push(e)
        else
          new_array.push(e)
        end
        current_index = current_index + 1
      end
      arr = new_array
    end
    shuffled_array
end

end

p [1,2,3,4,5,6,7,8,9].shuffle
