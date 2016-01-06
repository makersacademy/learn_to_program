#should return one thousand/ten thousand instead
#of ten hundred and one hundred hundred, then add millions,trillions
#this is the file we are given have to find a way to do above



def english_number number
  if number < 0
    return "not today young man"
  end
end

num_string = " "
@ones_place = ['zero', 'one', 'two', 'three',
              'four', 'five', 'six',
              'seven', 'eight', 'nine']

@tens_place = ['ten', 'twenty', 'thirty',
              'forty', 'fifty', 'sixty',
              'seventy', 'eighty', 'ninety']


@teenagers = ['eleven', 'twelve', 'thirteen',
             'fourteen', 'fifteen', 'sixteen',
             'seventeen', 'eighteen', 'nineteen']

@others =    [['hundred', 2],
            ['thousand', 3],
            ['million', 6],
            ['billion', 9],
            ['trillion', 12],
            ['quadrillion', 15],
            ['quintillion', 18],
            ['sextillion', 21],
            ['septillion', 24],
            ['octillion', 27],
            ['nonillion', 30],
            ['decillion', 33],
            ['undecillion', 36],
            ['duodecillion', 39],
            ['tredecillion', 42],
            ['quattuordecillion', 45],
            ['quindecillion', 48],
            ['sexdecillion', 51],
            ['septendecillion', 54],
            ['octodecillion', 57],
            ['novemdecillion', 60],
            ['vigintillion', 63],
            ['googol', 100]]

numbers = [@ones_place, @tens_place]

def recursion (accumalator = "", remainder = 0)
  x = @ones_place[remainder]
  accumalator += x
  return accumalator if remainder - 10 <= 0
  recursion accumalator, remainder
end

#return if ones_place
#call recursion with arguments accumalator, remainder




#index of arrays (n-1)
[1,1,1].last
