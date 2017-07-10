require_relative 'game_turn'
class Game
   attr_reader :title

 def initialize(name)
     @title = name
     @players = []
 end

 def add_players(player)
     @players << player
 end

 def play(rounds=1)
   1.upto(rounds) do |round|
      puts "\nRound Number #{round}"
       @players.each do |player|
                         GameTurn.take_turn(player)
                         puts player
                     end
  end
 end

 def print_stats
     strong_players, whimpy_players = @players.partition {|player| player.strong?}

    puts "\n... Game Statistics ...\n\n"
    puts "#{strong_players.size} Strong Players \n"
    strong_players.each do |player|
         puts "#{player.name} ... #{player.health}"
    end

    puts "\n#{whimpy_players.size} Whimpy Players \n"
    whimpy_players.each do |player|
       puts "#{player.name} ... #{player.health}"
    end

   sorted_players = @players.sort

   puts "\n\n....High Scores....\n\n"
   sorted_players.each do |player|
     puts "#{player.name.ljust(20,".")}#{player.score}"
   end


 end


def suerte
  @players.each do |player|
       10.times do
          rand(10) > 5 ? player.w00t : player.blam
       end
  end
end

end
