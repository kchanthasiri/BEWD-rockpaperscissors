class RockpaperscissorsController < ApplicationController

	def index
		@options = Rockpaperscissor.all
	end

	def show
		id = params[:id]
		@choice = Rockpaperscissor.find(id)

		game = ["Rock", "Paper", "Scissors"]
		@opponents_choice = game.sample

		game_logic(@choice, @opponents_choice)


	end


	def game_logic(player, computer)
		if player.win == computer
			@end_message = "Win! You defeated"
			@image = "http://media.tumblr.com/tumblr_ls72l5yoJb1qjbeju.gif"
		elsif player.lose == computer
			@end_message = "Lose! You were defeated by"
			@image = "http://cdn.rsvlts.com/wp-content/uploads/2013/03/some_seriously_bad_timing_fails_17.gif"
		elsif player.tie == computer
			@end_message = "Tie!"
			@image = "http://i2.kym-cdn.com/photos/images/newsfeed/000/447/579/465.gif"
		end
	end

end

