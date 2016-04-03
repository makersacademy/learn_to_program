class Dragon

def initialize
  @hungry? = true
  @wannawalk? = false
end

def feed
  if @hungry? == true then return "Mmmmhh yummy yummy!"
  else
    return "I'm not hungry yet!"
  end
  @hungry? = false
  @wannawalk? = true
end

def walk
 if @wannawalk == true then return "I love walking around!"
 else
  return "I don't wanna walk right now!"
end
  @hungry? = true
  @wannawalk? = false
end