#This code doesn't work. I moved on to the next task.

def roman_to_integer roman
  roman_hash = {
                 "M" => 1000,
                 "D" => 500,
                 "C" => 100,
                 "L" => 50,
                 "X" => 10,
                 "V" => 5,
                 "I" => 1
                }
                
    valid_characters=["M","D","C","L","X","V","I"]
    
    user_numeral_arr=[]
    user_numeral_arr.push(user_input.split(""))
    puts user_numeral_arr
    
    user_numeral_arr.each do |x|
       if valid_characters.include?(x)
           calculate_integer
       else
           abort("Invalid character used, restart program")
       end
    end
    
    
  def calculate_integer
      array_position=0
    user_numeral_arr.each do |x,y|
        x=user_numeral_arr[array_position]
        y=user_numeral_arr[array_position+1]
        if x>=y
           int_output=int_output+roman_hash[x]
          elsif
           y>x
           int_output=int_output+roman_hash[y-x]
        end
    end
  end
    
                
end

puts "Type a roman numeral to be converted to arabic numbers: "
    user_input=gets.chomp.upcase
    int_output=0
    puts "Party like it's "+int_output.to_s