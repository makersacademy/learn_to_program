def ask question
  while true

    puts question

    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == "no")

        if reply == 'yes'

          return true

        else

          return false

        end

    else
      puts 'Please answer "yes" or "no".'

    end

  end



end


puts 'Hi, please answer the following questions'
puts 'to determine your suitability for marriage'
ask('do you like Sci Fi')
ask('Do you like to party?')
wets_bed = ask('Do you wet the bed?')
puts wets_bed
