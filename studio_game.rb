player_name = 'larry\'s'
player_health = 60
player_health2 = 125
player_health3 = 100
player_name2 = 'curly'
player_name3 = 'moe'
player_name4 = "shemp"
player_health4 = 60
puts "#{player_name} healht is #{player_health}"
puts "Players are \n #{player_name} \n #{player_name2} \n #{player_name3}"
puts "".center(30,"*")
puts "#{player_name.capitalize} has a healht of #{player_health}"
puts "#{player_name2.upcase} has a health of #{player_health2}"
player_health2  = player_health
puts "#{player_name2.upcase} has a health of #{player_health2}"
player_health2 = 30
puts "#{player_name2.upcase} has a health of #{player_health2}"
puts "".center(30,"-")
puts "#{player_name3.capitalize} has a healt of #{player_health3}".center(60,"*")
puts "#{player_name4.capitalize.ljust(40,".")} #{player_health4}"
puts "".center(100,"*")
time_example = Time.new
puts time_example.strftime("The game started on %A %d/%m/%y at %l:%m%p ")
puts "Hola"
