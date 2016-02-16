
def english_number number

  # [<english number>,<number>,<can be multiple>,<can have hyphen after>]
  ref = [['quindecillion',    1000000000000000000000000000000000000000000000000,true,false],
         ['quattuordecillion',1000000000000000000000000000000000000000000000,true,false],
         ['tredecillion',     1000000000000000000000000000000000000000000,true,false],
         ['duodecillion',     1000000000000000000000000000000000000000,true,false],
         ['undecillion',      1000000000000000000000000000000000000,true,false],
         ['decillion',        1000000000000000000000000000000000,true,false],
         ['nonillion',        1000000000000000000000000000000,true,false],
         ['octillion',        1000000000000000000000000000,true,false],
         ['septillion',       1000000000000000000000000,true,false],
         ['sextillion',       1000000000000000000000,true,false],
         ['quintillion',      1000000000000000000,true,false],
         ['quadrillion',      1000000000000000,true,false],
         ['trillion',         1000000000000,true,false],
         ['billion',          1000000000,true,false],
         ['million',          1000000,true,false],
         ['thousand',         1000,true,false],
         ['hundred',          100,true,false],
         ['ninety',           90,false,true],
         ['eighty',           80,false,true],
         ['seventy',          70,false,true],
         ['sixty',            60,false,true],
         ['fifty',            50,false,true],
         ['forty',            40,false,true],
         ['thirty',           30,false,true],
         ['twenty',           20,false,true],
         ['nineteen',         19,false,false],
         ['eighteen',         18,false,false],
         ['seventeen',        17,false,false],
         ['sixteen',          16,false,false],
         ['fifteen',          15,false,false],
         ['fourteen',         14,false,false],
         ['thirteen',         13,false,false],
         ['twelve',           12,false,false],
         ['eleven',           11,false,false],
         ['ten',              10,false,false],
         ['nine',             9,false,false],
         ['eight',            8,false,false],
         ['seven',            7,false,false],
         ['six',              6,false,false],
         ['five',             5,false,false],
         ['four',             4,false,false],
         ['three',            3,false,false],
         ['two',              2,false,false],
         ['one',              1,false,false] ]

  number == 0 ?'zero' : number_of(number, ref).strip!
end

def number_of number, ref

  result = ''
  ref.each do |ary|
    num_of_quant = number / ary[1]

    if num_of_quant >= 1
      quantifier = ary[0]
      number = number % ary[1]
      result << "#{(number_of(num_of_quant, ref)) if ary[2]}#{quantifier}#{ary[3] && number > 0?'-':' '}"
    end

    break if number == 0
  end
  result
end

class BeerSong

  attr_accessor :number

  def initialize (number)
    @number = number < 0 ? 0 : number
  end

  def print_song
    for i in (@number).downto(1)
      puts "#{wordify_number(i)} on the wall,"
      puts "#{wordify_number(i)},"
      puts "Take one down, pass it around,"
      puts "#{wordify_number(i-1)} on the wall."
      puts ""
    end
  end

  private

  def wordify_number (number)
    "#{english_number(number).capitalize} bottle#{'s' unless number ==1} of beer"
  end
end

song = BeerSong.new(999)

song.print_song

