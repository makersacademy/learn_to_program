def billion_sec_time (year, month, date, hour, minute, second)

birth_day = Time.gm(year,month,date,hour,minute,second)

puts "You will turn one billion seconds at:
        #{Time.at(birth_day.to_i+1000000000)}"

end

=begin

Epoch is at 1 January 1970, GMT - so need to convert time to GMT before finding
seconds to then from Epoch

=end
