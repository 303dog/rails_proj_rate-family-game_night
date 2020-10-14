class Review < ApplicationRecord
    belongs_to :game
    belongs_to :user
    validates :label, presence: true
    validates :summary, presence: true
    validates :rating, presence: true

   
    def self.find_by_game_id(id)
        self.where(game_id: id)
    end

    def self.alpha_order
        order('label')
    end

    
end
