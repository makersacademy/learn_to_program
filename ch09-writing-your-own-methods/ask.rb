
def ask question
  puts question
  reply = gets.chomp.downcase
  reply == "yes" || reply == "no" ? (reply == "yes" ? true : false) : "Please answer 'Yes' or 'No'."
end

ask "the potato is warm"