# favourite_food gives explicit returns
def favourite_food name
  if name == 'Lister'
    return 'vindaloo'
  end
  if name == 'Rimmer'
    return 'mashed potatoes'
  end

  'hard to say... maybe fried plantain?'
end

# favourite_drink does not give explicit returns
def favourite_drink name
  if name == 'Jean-Luc'
    'tea, Earl Grey, hot'
  elsif name == 'Kathryn'
    'coffee, black'
  else 
    'perhaps... horchata?'
  end
end

puts favourite_food('Rimmer')
puts favourite_food('Lister')
puts favourite_food('Cher')
puts favourite_drink('Kathryn')
puts favourite_drink('Oprah')
puts favourite_drink('Jean-Luc')

