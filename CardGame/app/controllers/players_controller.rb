class PlayersController < ApplicationController

    def index 

        @players = Player.all

    end

    def show 

        @player = Player.find(params[:id])
        
    end

    def new
        @player = Player.new
    end

    def create 
        player = Player.find_or_create_by(
            adam_hates_strong_params(:name, :playstyle)
        )
        player.save
        redirect_to player_path(player)
    end 

    def edit

    end

    def update

    end

    def destroy

    end
    private
    def adam_hates_strong_params(*args)
        params.require(:player).permit(*args)
        #params.method(controller_name_singular).method(args)
    end

end
