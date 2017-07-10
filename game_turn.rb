require_relative 'die'
require_relative 'player'
module GameTurn
  def self.take_turn(player)
      rolled_number = Die.new.roll
         case rolled_number
         when (1..2)
            player.blam
         when (3..4)
            puts "#{player.name} was skipped"
         when (5..6)
            player.w00t

         end
  end


end
