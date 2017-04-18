def ask question
# your code here
  puts question
  
  answer = String.new
  
  until (answer == 'yes' || answer == 'no') do
        answer = gets.chomp.downcase
        return true if answer == 'yes'
        return false if answer == 'no'
        puts "please type yes or no"
  end
  
end