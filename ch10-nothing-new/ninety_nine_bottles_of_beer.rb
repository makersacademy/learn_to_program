def english_number number

  if number < 0
    return "Enter a positive number."
  end

  if number == 0
    return "zero"
  end

  num_string = " "

  units = ["one","two","three","four","five","six","seven","eight","nine"]
  tens = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  teenagers = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
  large = [["hundred",2], ["thousand",3], ["million",6], ["billion",9], ["trillion",12]]

  left = number

  while large.length > 0
    large_num = large.pop
    large_denominator = 10**large_num[1]
    write = left / large_denominator
    left = left - write * large_denominator

    if write > 0
      num_string = num_string + english_number(write) + " " + large_num[0]
      if left > 0
        num_string = num_string + " "
      end
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if (write == 1) && (left > 0)
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens[write-1]
    end

    if left>0
      num_string = num_string + "-"
    end
  end

  write = left

  if write > 0
    num_string = num_string + units[left-1]
  end

  num_string

end

initial_number = 5
number = initial_number
while number > 2
  puts english_number(number).capitalize + " " + "bottles of beer on the wall, #{english_number(number)} bottles of beers!"
  number -=1
  puts "Take one down, pass it around, #{english_number(number)} bottles of beer on the wall!"
end
