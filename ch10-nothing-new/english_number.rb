
PV = {100 =>'googol',63=>'vigintillion',60=>'novemdecillion',57=>'octodecillion',54=>'septendecillion',51 =>'sexdecillion',48 =>'quindecillion',45 =>'quattuordecillion',42 =>'tredecillion',39 =>'duodecillion',36 =>'undecillion',33 =>'decillion',30 =>'nonillion',27 =>'octillion',24 =>'septillion',21 =>'sextillion',18 =>'quintillion',15 =>'quadrillion',12 =>'trillion',9 =>"billion", 6 => "million", 3 => "thousand", 0=>"units"}

UNITS_TEENS = {0=>"", 1 => "one", 2 =>"two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7=>"seven", 8=>"eight", 9=> "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 =>"thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 =>"seventeen",
  18 => "eighteen", 19 => "nineteen"}

TENS = {20 =>"twenty", 30=>"thirty", 40 =>"forty", 50=>"fifty",
          60 => "sixty",70 =>"seventy",80 =>"eighty", 90=> "ninety"}

def hundreds_to_words int
  hundred_words = ""
  number_hundreds = int/100
  if number_hundreds > 0
    hundred_words << UNITS_TEENS[number_hundreds] + " hundred "
    int %= 100
  end
  int > 0 && int < 20 ? hundred_words << UNITS_TEENS[int] : ""
  if int>=20 && int<100
    arr = int.to_s.chars.map(&:to_i)
    hundred_words << TENS[arr[0]*10]
    hundred_words<<"-"+UNITS_TEENS[arr[1]] if arr[1] != 0
  end
  hundred_words
end

def split int
  arr = []
  PV.each do |pv,value|
    num_pv = int / 10**pv
    arr << num_pv
    arr <<value if num_pv > 0
    int %= 10**pv
  end
  arr[0..-2]
end

def english_number(int)
  return 'Please enter a number that isn\'t negative.' if int < 0
  return "zero" if int == 0
  split(int).map! {|ele| ele.class == Fixnum ? hundreds_to_words(ele) : ele}.join(" ").gsub(/\s+/, ' ').sub(/\s+$/,'').sub(/^\s+/,'')
end

p english_number 60
  p english_number 104056890567896
