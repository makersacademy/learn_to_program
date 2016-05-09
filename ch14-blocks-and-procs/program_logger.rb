def log desc, &block
  yield desc
end

p log(1) {|i| i * 2 }


