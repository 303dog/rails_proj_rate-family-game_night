class Game < ApplicationRecord
    validates :title, presence: true
    validates :title, uniqueness: {case_sensitive: false}
    validates :num_of_players, presence: true
    validates :description, presence: true
    validates :title, presence: true
    has_many :reviews
    has_many :users, through: :reviews
    

    def self.alpha_order
        order('title')
    end
end
