
def others(roman)

real_date = 0

roman.downcase.split(//).each_cons(2) do |a, b|
  if a+b == "iv"
    real_date += 4
  elsif a+b == "ix"
    real_date += 9
  elsif a+b == "xl"
    real_date += 40
  elsif a+b == "xc"
    real_date += 90
  elsif a+b == "cd"
    real_date += 400
  elsif a+b =="cm"
    real_date += 900
  end
end
real_date
end


def delete(roman)

roman.downcase.split(//).each_cons(2) do |a, b|

  if a+b == "iv"
  roman.slice!("iv")


  elsif a+b == "ix"
    roman.slice!("ix")

  elsif a+b == "xl"
    roman.slice!("xl")

  elsif a+b == "xc"
    roman.slice!("xc")

  elsif a+b == "cd"
    roman.slice!("cd")

  elsif a+b =="cm"
    roman.slice!("cm")

  end
end
roman
end




def final(roman)

real_date = 0

roman.downcase.each_char do |xs|
  if xs == "m"
    real_date += 1000
  elsif
    xs == "d"
    real_date += 500
  elsif
    xs == "c"
    real_date += 100
  elsif
    xs == "l"
    real_date += 50
  elsif
    xs == "x"
    real_date += 10
  elsif
    xs == "v"
    real_date += 5
  elsif
    xs == "i"
    real_date += 1
  end

end
real_date
end

def roman_to_integer roman
#rescue Exception => e


    real_date = others(roman)
    roman = delete(roman)
    real_date += final(roman).to_i


p real_date
end


