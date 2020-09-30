class Review < ApplicationRecord

    belongs_to :game
    belongs_to :user
    validates :label, presence: true

   # validates :current_user, {message: "Must be logged in "}

    def self.find_by_game_id(id)
        self.where(game_id: id)
    end

    def self.alpha_order
        order('label')
    end

    
end
