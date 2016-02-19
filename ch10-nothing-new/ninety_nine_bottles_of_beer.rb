require './english_number.rb'                                                   #not writing it again.

1999.downto(1) do |num|
    puts "#{english_number(num).capitalize} bottle#{(num>1?'s':'')} of rum on the wall,
    it's the third time i write this song,
    but still i can't learn it
    so just take one bottle and you have"
end