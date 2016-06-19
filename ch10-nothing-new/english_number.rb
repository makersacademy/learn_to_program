def english_number (number)

  # your code here

  if number <= 0
  return "No negative Integers, please put positive integer e.g where X is your integer; X >= 0"
 
  elsif number == 0 then return "Zero"
  
  end 

end

# special number cases upto 100.. 20 onwards similar patttern of names e.g 26 and 36 = Twenty six and Thirty six
# 10 to 19 vary
# ones, tens, hundreds, thousands
# number up to googol(highest known value?) 10^100

num_string = ''

ones = ['one', 'two','three','four','five','six','seven','eight','nine']
tens = ['ten','eleven','twelev','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
tenss = ['twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
hundreds = ones + "hundred"


def thousands 
    if number < 10000 
        return ones + "thousand"
        elsif number>= 10000 and number <1000000
        tenss + "thousand"
        end
end

big_numbers = [["hundred",2]["thousand",3]["million",6]["billion",9]["googol",100]]

#left and write to fill remaining space?

left = number
write =left/(10^100)#?? googol but if less then?

