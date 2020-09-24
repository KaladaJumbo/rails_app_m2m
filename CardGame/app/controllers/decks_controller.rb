class DecksController < ApplicationController

    def index 

        @decks = Deck.all

    end

    def show 

        @deck = Deck.find(params[:id])
        
    end

    def new
        @deck = Deck.new
    end

    def create 
        player = Player.find_or_create_by(name: params[:deck][:player])
        deck = Deck.find_or_create_by(adam_hates_strong_params(:name, :style, :decktype))
        deck.player = player
        deck.save
        redirect_to deck_path(deck)

    end 

    def addcard
        @cards = Card.all
        @deck = Deck.find(params[:id])
        render "addcard"
    end

    def edit

    end

    def update
        deck = Deck.find(params[:id])
        deck.update(card_ids: params[:deck][:card_ids])
        redirect_to deck_path(deck)
    end

    def destroy

    end

    private 

    def adam_hates_strong_params(*args)

        params.require(:deck).permit(*args)

    end

end
