def english_number num
  return "zero" if num == 0

  zillion = {
    "quindecillion" => 48,
    "quattuordecillion" => 45,
    "tredecillion" => 42,
    "duodecillion" => 39,
    "undecillion" => 36,
    "decillion" => 33,
    "nonillion" => 30,
    "octillion" => 27,
    "septillion" => 24,
    "sextillion" => 21,
    "quintillion" => 18,
    "quadrillion" => 15,
    "trillion" => 12,
    "billion" => 9,
    "million" => 6,
    "thousand" => 3,
    "hundred" => 2
  }

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  numstring = ''
  write = num
  left = num

  zillion.each do | unit, power |
    write = num / 10**power
    num = num - write* (10**power)
    left = num

    if write >= 1
      numstring = numstring + english_number(write) + " " + unit
      numstring << " " if left > 0
    end
  end

  if left >=1
    write = left/10

    if write >=2
      numstring = numstring + tens_place[write-1]
      left = left - write*10
      numstring << "-" if left > 0
    elsif write >=1
      numstring = numstring + teenagers[left-10]
      left=0
    end

    if left >=1
      numstring = numstring + ones_place[left-1]
    end
  end

  numstring
end

