class Game
   attr_reader :title

 def initialize(name)
     @title = name
     @players = []
 end

 def add_players(player)
     @players << player
 end

 def play
     puts "there are #{@players.size} players in the game #{@title}"
     @players.each do |player|
            puts player
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
