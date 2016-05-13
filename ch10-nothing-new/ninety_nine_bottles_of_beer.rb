require "./english_number.rb"



def bottles_of_beer(bottles)
    if bottles >= 1
      (bottles - 1).times do 
        puts "#{english_number bottles} bottles of beer on the wall,"       ,
        "#{english_number bottles} bottles of beer,"           ,
        "Take one down, pass it around,"         ,
        "#{english_number (bottles -= 1)} #{bottles == 1 ? "bottle" : "bottles"} of beer on the wall."
      end
      puts "One bottle of beer on the wall,"        ,
           "One bottle of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "Zero bottles of beer on the wall."
    elsif @num_bottles == 1
      puts "One bottle of beer on the wall,"        ,
           "One bottle of beer,"                    ,
           "Take one down, pass it around,"                         ,
           "Zero bottles of beer on the wall."
     else
      puts ""
      end
    end
