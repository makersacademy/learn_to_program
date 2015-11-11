def english_number number
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  num_string = ''
  ones_place = ['one', 'two', 'three',
  'four', 'five', 'six',
  'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
  'forty', 'fifty', 'sixty',
  'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen', 'eighteen', 'nineteen']
  
  big_uns = {"quindecillion" => 10**48,
    "quattuordecillion" => 10**45,
    "tredecillion" => 10**42,
    "duodecillion" => 10**39,
    "undecillion" => 10**36,
    "decillion" => 10**33,
    "nonillion" => 10**30,
    "octillion" => 10**27,
    "septillion" => 10**24,
    "sextillion" => 10**21,
    "quintillion" => 10**18,
    "quadrillion" => 10**15,
    "trillion" => 10**12,
    "billion" => 10**9, 
    "million" => 10**6,
    "thousand" => 10**3}

  left = number
  
  big_uns.each do |name, value| # This block deals with values > 1000
    write = left/value 
    left = left - write*value
    if write > 0
      pre_name = english_number write
      num_string = num_string + pre_name + " #{name}"
      num_string = num_string + ' ' if left > 0
    end 
  end
  
  write = left/100 # Hundreds section
  left = left - write*100 
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    num_string = num_string + " and " if left > 0
  end
  
  write = left/10 # Tens section
  left = left - write*10 
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
      num_string = num_string + '-' if left > 0
  end
  
  write = left
  left = 0
  num_string = num_string + ones_place[write-1] if write > 0

  num_string
end

class BeerSong
  def initialize(bottle_num)
    if bottle_num > 99
      @bottle_num = 99
    elsif bottle_num < 0
      @bottle_num = 0
    else
      @bottle_num = bottle_num
    end
  end
  
  def print_song
    sing_a_long(@bottle_num) 
  end 
  
  def sing_a_long(arg)   
    if arg == 0
      return ""
    elsif arg == 1
      print "One bottle of beer on the wall,\n",
      "One bottle of beer,\nTake one down, pass it around,\n",
      "Zero bottles of beer on the wall." 
    elsif arg == 2
      puts "Two bottles of beer on the wall,\n",
      "Two bottles of beer,\nTake one down, pass it around,\n",
      "One bottle of beer on the wall."
    else 
      puts "#{english_number(arg).capitalize} bottles of beer on the wall,\n",
      "#{english_number(arg).capitalize} bottles of beer,\nTake one down, pass it around,\n",
      "#{english_number(arg-1).capitalize } bottles of beer on the wall."
    end
    
    sing_a_long(arg - 1)
  end
end