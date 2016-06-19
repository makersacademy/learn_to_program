def roman_to_integer roman
  
  roman = roman.downcase.split('')

  rhash = {'i' => 1,
           'v' => 5,
           'x' => 10,
           'l' => 50,
           'c' => 100,
           'd' => 500,
           'm' => 1000}

  # let's begin!
  sum = 0
  while roman.length >= 1
    checking = roman.pop
    if roman.length > 0 and rhash[checking] > rhash[roman.last]
      sum = sum - rhash[roman.pop]
    end
    sum = sum + rhash[checking]
  end

  sum
  
end