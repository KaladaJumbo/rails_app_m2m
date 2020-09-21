class Deck < ApplicationRecord
    has_many :deck_cards
    has_many :cards, through: :deck_cards
    belongs_to :player

end
