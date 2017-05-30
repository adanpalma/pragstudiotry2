class Player
  attr_accessor :name
  attr_reader :health


  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def name=(name)
     @name = name.capitalize
  end

  def score
    " #{@health + @name.length}"
  end

  def w00t
      puts "#{name} was w00ted"
      @health += 15
  end

  def  blam
      puts "#{name} was blammed"
      @health -= 10
  end

  def  to_s
    "Hi i am #{@name} with a health of #{@health} and a score of #{score}"
  end
end


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

     @players.each do |player|
       puts player

       10.times do
          rand(10) > 5 ? player.w00t : player.blam
       end
     end
 end


def just_play
    @players.each {|player| puts player}
end

end

player1 = Player.new("moe")
player2 = Player.new("adan",500)
player3 = Player.new("ana",799)

game = Game.new("Knucleheads")
game.add_players(player1)
game.add_players(player2)
game.add_players(player2)
game.play
game.just_play










