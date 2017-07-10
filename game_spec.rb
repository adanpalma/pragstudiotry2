require_relative('game')
require_relative ('player')
require_relative ('die')

describe Game do
  before do
     @game = Game.new("Knukleheads")
     @initial_health = 150
     @player = Player.new("Adan",@initial_health)
     @game.add_players(@player)
  end

  context "Roll a Die" do
     it "woot when die roll a number > 4" do
        allow_any_instance_of(Die).to receive(:roll).and_return(5)
        @game.play
        @player.health.should == @initial_health + 15

     end

     it "not w00 or blam when number rolled is bt 3..4" do
        allow_any_instance_of(Die).to receive(:roll).and_return(3)
        @game.play
        @player.health.should == @initial_health
     end

     it "would blam when rolled number is lt 3" do
       allow_any_instance_of(Die).to receive(:roll).and_return(1)
       @game.play
       @player.health.should == @initial_health - 15
     end

  end


end
