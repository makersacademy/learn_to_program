#I have used while true to test the validity of the entries.

def determine_age
  while true
    puts "What is your year of birth?"
    year = gets.chomp
    break if year.to_i > 1900
    puts "That is not a valid year of birth... eg '1989'"
  end

  while true
    puts "What is your month of birth? (You can answer in numbers or words.)"
    month = gets.chomp.downcase
    month_array = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
    month_number_array = ['1','2','3','4','5','6','7','8','9','10','11','12']
    if month_array.include?(month)
      month_array.each_with_index do |m_arr, i|
        if m_arr == month
          month = (i+1)
        end
      end
      break
    elsif month_number_array.include?(month)
      break if month.to_i <=12
    else
      puts "That is not a valid month - eg put 'january', or '1'"
    end
  end

  while true
    puts "What is the date of your day of birth?"
    date = gets.chomp
    if date.to_i < 32
      break
    else
      puts "That is not a valid date - eg put '1', '10', '26'."
    end
  end

  now = Time.now
  birthday = Time.new(year.to_i, month.to_i, date.to_i)
  age = ((now - birthday) / 60 / 60 / 24 / 365).round
  puts "You are #{age} years old!"
end

determine_age
puts "Here are your #{age} birthday punches..."
puts "READY??"
sleep 3
age.times {puts "BIRTHDAY PUNCH"}
