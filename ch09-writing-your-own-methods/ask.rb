#!/usr/bin/env ruby
def ask_r question
    puts question
    reply = $stdin.gets.chomp

    return true if reply.downcase == 'yes'
    return false if reply.downcase == 'no'

    puts "Please answer 'yes' or 'no'."

    ask_r question
end

puts "Hello & thanks in advance for taking part in this questionair..."
puts ""
ask_r "Do you like Football?"
ask_r "Do you live in the UK?"
ask_r "Do you live in London?"
gooner = (ask_r("Do you support Arsenal FC?"))

if gooner == true
  season_pass = (ask_r("Do you happen to have a season pass I can borrow?"))
end

puts ""
puts "Thanks you for taking the time to answer my questions..."
puts gooner
puts season_pass
