class Game < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: {case_sensitive: false}
    validates :num_of_players, presence: true
    validates :description, presence: true
    has_many :reviews
    has_many :users, through: :reviews
    
    def self.find_by_game_id(id)
        self.where(game_id: id)
    end

    def self.alpha_order
        order('title')
    end
end
