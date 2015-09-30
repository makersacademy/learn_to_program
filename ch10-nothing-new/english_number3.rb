def english_number number
  if number < 0
    return "please enter a positive number"
  end

  if number == 0
    return "zero"
  end


  units = ["one","two","three","four","five","six","seven","eight","nine"]
  tens = ["ten","twenty","thirty","forty","fifty","sixty","seventy","eighty","ninety"]
  teenagers = ["eleven","twelve","thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]

  write = number/10
  left = number - write * 10

  if write > 0
    if (write == 1) && (left > 0)
    num_string = teenagers[left-1]
    end

    num_string = tens[write-1] + "-" + units[left-1]
  end 
end
