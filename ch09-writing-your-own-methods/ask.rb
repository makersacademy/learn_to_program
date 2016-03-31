=begin

A few things to try: 9.5.1
Improved ask method. That ask method I showed you was OK, but I bet you
could do better. Try to clean it up by removing the answer variable. You’ll
have to use return to exit from the loop. (Well, it will get you out of the
whole method, but it will get you out of the loop in the process.) How do
you like the resulting method? I usually try to avoid using return (a personal
preference), but I might make an exception here.

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
answer
end

=end

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      return reply == 'yes'
    else
      puts 'Please answer "yes" or "no".'
    end
  end
answer
end
#wets_bed = ask 'Do you wet the bed?'
#puts wets_bed