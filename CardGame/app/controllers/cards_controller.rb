class CardsController < ApplicationController

    def index 
        
        @cards = Card.all

    end

    def show 

        @card = Card.find(params[:id])

    end

    def new
        @card = Card.new
    end

    def create 
        card = Card.find_or_create_by(
            adam_hates_strong_params(:name, :cost, :element_type, :card_type, :set_name, :description, :power, :toughness, :ability)
        )
        card.save
        redirect_to card_path(card)
    end 

    def edit

    end

    def update

    end

    def destroy

    end

    private
    def adam_hates_strong_params(*args)
        params.require(:card).permit(*args)
    end
    

end
