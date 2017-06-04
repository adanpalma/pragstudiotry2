require_relative "player"

describe Player do
it "has capitlized name" do
     player = Player.new("incomodo",30)
     expect(player.name).to eq("Incomodo")
end

it "has an initial health" do

     player = Player.new("Adan", 150)
     expect(player.health).to eq (150)
end

it "has a string representation" do
    player = Player.new("Adan",100)

    expect(player.to_s).to eq("Hi i am Adan with a health of 100 and a score of  104")
end

it "computes a score  the sum of its health and length of name"

it "icrease health by 15 when w00ted"

it "decrease health by 10 when blam"

end
