require './english_number.rb'
# Pulls in the english_number.rb file so we can use the english_number method
# from that file in this method.

def beersong(beers)
  initial_beers = beers
  current_beers = initial_beers

  while current_beers > 0

    current_beers == 1 ? ending = " bottle" : ending = " bottles"
    # Conditioal assignment.  If current_beers is 1 the ending variable will be
    # " bottle" else the ending variable is "bottles".

    puts english_number(current_beers).capitalize + ending + ' of beer on the wall, ' +
      english_number(current_beers) + ending + ' of beer!'
      current_beers = current_beers - 1
      
    puts 'Take one down, pass it around, ' +
      english_number(current_beers) + ending + ' of beer on the wall!'
  end
end

beersong(10)

# ruby ninety_nine_bottles_of_beer.rb
