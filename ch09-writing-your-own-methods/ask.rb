
def ask(question)

  while true

   puts question

   reply = gets.chomp
   reply.downcase!

     if reply == "yes" || reply == "no"
         if reply == 'yes'
            return true
         else
            return false
         end


     else
        puts "Please answer 'yes' or 'no'."
     end

 end

end
