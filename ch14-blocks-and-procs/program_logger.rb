def log desc
  p "Kicking \"#{desc}\" off!"
  val = yield
  p "Phew! \"#{desc}\" is over. The block returned #{val}."
end
