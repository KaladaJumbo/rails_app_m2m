class Deck < ApplicationRecord
    belongs_to :card
    belongs_to :player
    
end
