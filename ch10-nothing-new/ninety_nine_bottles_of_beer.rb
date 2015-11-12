require './english_number.rb'

def song (n)

  def bottles (n)
    if n == 1
       "bottle"
    else
      "bottles"
    end
  end

  while n > 0
    puts "#{english_number(n).capitalize} #{bottles(n)} of beer on the wall, ",
         "#{english_number(n)} #{bottles(n)} of beer, ",
         "take one down, pass it around, ",
         "#{english_number(n - 1)} #{bottles(n-1)} of beer on the wall."

         n -= 1
   end
 end
