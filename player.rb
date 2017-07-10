class Player
  attr_accessor :name
  attr_reader :health


  def <=>(player)
      player.score <=> score
  end

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def name=(name)
     @name = name.capitalize
  end

  def score
    @health + @name.length
  end

  def w00t
      puts "#{name} was w00ted"
      @health += 15
  end

  def  blam
      puts "#{name} was blammed"
      @health -= 15
  end

  def  to_s
    "Hi i am #{@name} with a health of #{@health} and a score of #{score}"
  end

  def strong?
      (@health >= 150)
  end
end


if __FILE__ == $0
   p1 = Player.new("Adan")
   p1.w00t
   puts p1
end









