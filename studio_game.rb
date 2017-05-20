
def say_hello(name = "Sin Nombre",health =99)
     "Hi, I am #{name.capitalize} and my Health is #{health} as of #{current_time}"
end

def current_time
    Time.new.strftime("%I:%M:%S %p")
end

puts say_hello("Adan",100)
puts say_hello("Ana Sofia",150)
puts say_hello("Felipe A",160)
puts say_hello("Andres A")



