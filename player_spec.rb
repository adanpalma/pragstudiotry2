require_relative "player"


describe Player do

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



it "decrease health by 10 when blam" do

   @player.blam
   expect(@player.health).to eq(@initial_health - 10)


end


end
