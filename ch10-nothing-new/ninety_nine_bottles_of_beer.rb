class BeerSong
attr_accessor 'bottles'
  def initialize(bottles)
    @bottles = bottles
    if @bottles < 1
      bottles = 0
    else @bottles > 9999
      bottles = 9999
    end
  end

def eng_num number
  num = ''
  if number == 0
    num = 'zero'
  else
  ones = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tens = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  first  = number
  second = first/1000 
 first = first - second*1000
  
  if second > 0
  	thousands = eng_num second
  	num = num + thousands + ' thousand'
  	if first > 0
  		num = num + ' '
  	end
  end
 
  second = first/100
  first = first - second*100

  if second > 0
    hundreds = eng_num second
    num = num + hundreds + ' hundred'
    if first > 0
      num = num + ' '
    end
  end

  second = first/10
  first  = first - second*10

  if second > 0
    if ((second == 1) and (first > 0))
      num = num + teens[first-1]
      first = 0
    else
      num = num + tens[second-1]
    end
    if first > 0
      num = num + '-'
    end
  end
  second = first
  first  = 0
  if second > 0
    num = num + ones[second-1]
  end
  end
  num
end

def song(bottles)
  if bottles == 0
    String.new
  elsif bottles > 9999
    String.new
  else
  puts "#{eng_num(bottles)} #{grammar(bottles)} of beer on the wall,".capitalize
  puts "#{eng_num(bottles)} #{grammar(bottles)} of beer,".capitalize
  puts "Take one down, pass it around,"
  puts "#{eng_num(bottles - 1)} #{grammar(bottles - 1)} of beer on the wall.".capitalize
end
end

def print_song
  @bottles.downto(1) { |x|
  song(x)
  }
end
end


