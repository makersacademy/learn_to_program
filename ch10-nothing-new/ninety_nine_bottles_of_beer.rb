class BeerSong

  attr_accessor 'number'

  def initialize(number)
    @number = number
    @number = 0  if number < 0
    @number = 9999 if number > 9999
  end

  def print_song
    while @number > 0
      puts "#{writeNumber(@number)} bottle#{@number!=1 ? 's': ''} of beer on the wall,"
      puts "#{writeNumber(@number)} bottle#{@number!=1 ? 's': ''} of beer,"
      puts "Take one down, pass it around,"
      puts "#{writeNumber(@number-1)} bottle#{@number-1!=1 ? 's': ''} of beer on the wall."
      @number -= 1
    end

  end

  def writeNumber(num)
    smallNumber = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' ]
    teensNumber = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    tensNumber = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

    letterNum=[]
    if num%10 == 0 && num < 100 && num !=0
      letterNum << (tensNumber[num/10 - 1])
    elsif num < 10
      letterNum << (smallNumber[num])
    elsif num < 20
      letterNum << (teensNumber[num-11])
    elsif num < 100
      letterNum << (tensNumber[num/10 - 1]) + '-' + smallNumber[num - (num/10)*10 ]
    elsif num < 1000
      letterNum << smallNumber[num/100]
      letterNum << 'hundred'
      letterNum << writeNumber(num - (num/100)*100)
    else
      letterNum << smallNumber[num/1000]
      letterNum << 'thousand'
      letterNum << writeNumber(num - (num/1000)*1000)
    end
    letterNum = letterNum.join(' ').sub('zero','').capitalize.rstrip
    letterNum.rstrip=='' ? 'Zero' : letterNum
  end
end