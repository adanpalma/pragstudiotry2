require_relative 'player'
require_relative 'game'


player1 = Player.new("moe")
player2 = Player.new("adan",500)
player3 = Player.new("ana",799)

game = Game.new("Knucleheads")
game.add_players(player1)
game.add_players(player2)
game.add_players(player3)
game.play(5)
game.print_stats




