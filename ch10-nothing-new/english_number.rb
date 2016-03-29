def english_number num
  array = []
  if num == 0
    array << "zero"
  end
  ones = ['one','two','three','four','five','six','seven','eight','nine']
  tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  remaining = num % 100
  write = num % 100 / 10
  remaining = remaining - write*10
  if write > 0
    if ((write == 1) && (remaining > 0))
      array << teens[remaining - 1]
      remaining = 0
    else
      array << tens[write - 1]
    end

    if remaining > 0
      array << "-"
    end
  end

  write = remaining
  if write > 0
    array << ones[write - 1]
  end
  hundreds = num % 1000 / 100
  if hundreds > 0
    if num - hundreds * 100 == 0
      hundred = "#{english_number(hundreds)} hundred"
      array.insert(0,hundred)
      num = num - hundreds * 100
    else
      hundred = "#{english_number(hundreds)} hundred "
      array.insert(0,hundred)
      num = num - hundreds * 100
    end
  end
  hash = {
    "thousand"            => 10 **  3,
    "million"             => 10 **  6,
    "billion"             => 10 **  9,
    "trillion"            => 10 ** 12,
    "quadrillion"         => 10 ** 15,
    "quintillion"         => 10 ** 18,
    "sextillion"          => 10 ** 21,
    "septillion"          => 10 ** 24,
    "octillion"           => 10 ** 27,
    "nonillion"           => 10 ** 30,
    "decillion"           => 10 ** 33,
    "undecillion"         => 10 ** 36,
    "duodecillion"        => 10 ** 39,
    "tredecillion"        => 10 ** 42,
    "quattuordecillion"   => 10 ** 45,
    "quindecillion"       => 10 ** 48
  }
  hash.each do |x,y|
    words = num % (y *1000) / y
    if words > 0
      if num - words * y == 0
        word = "#{english_number(words)} #{x}"
        array.insert(0,word)
        num = num - words * 100
      else
        word = "#{english_number(words)} #{x} "
        array.insert(0,word)
        num = num - words * 100
      end
    end
  end
  array.join''
end
