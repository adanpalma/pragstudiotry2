require_relative "player"


describe Player do

context "in a collection of players" do
  before do
    @player1 = Player.new("moe", 100)
    @player2 = Player.new("larry", 200)
    @player3 = Player.new("curly", 300)

    @players = [@player1, @player2, @player3]
  end

  it "is sorted by decreasing score" do
    @players.sort.should == [@player3, @player2, @player1]
  end
end



before do
   $stdout = StringIO.new

   @initial_health = 150
   @player = Player.new("Adan", @initial_health)

end




it "has capitlized name" do
     expect(@player.name).to eq("Adan")
end




it "has an initial health" do
     expect(@player.health).to eq(150)
end

it "has a string representation" do
    expect(@player.to_s).to eq("Hi i am Adan with a health of 150 and a score of 154")
end

it "computes a score  the sum of its health and length of name" do
     expect(@player.score).to eq(154)
end


it "icrease health by 15 when w00ted" do

   @player.w00t
   expect(@player.health).to eq(@initial_health + 15)

end



it "decrease health by 15 when blam" do

   @player.blam
   expect(@player.health).to eq(@initial_health - 15)


end

context "Validating a strong or whimpy player" do
     before do
       @initial_health = 150
       player = Player.new("Adan",@initial_health)
     end

     it "is strong" do
         #expect(@player.strong?).should be_truthy
         @player.should be_strong
     end
end

context "whimpy player" do
   before do
     @initial_health = 100
     @player = Player.new("Ana", @initial_health)
   end

   it "is whimpy" do
      @player.should_not be_strong
   end

end



end
