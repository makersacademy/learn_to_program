$var = "   "

def log(des, &block)
    puts $var + "starting " + des
    yield
    puts $var + "done"
end

y = 5
log("stupid code") { }

