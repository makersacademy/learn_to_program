def billday birth
  birth + 1e9
end

bill_bday = billday Time.new(1989,05,06)
puts "#{bill_bday > Time.now ? "I will be" : "I was"} one billion secs old on #{bill_bday.strftime('%D')}"

