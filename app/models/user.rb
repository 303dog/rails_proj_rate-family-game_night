class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :games, through: :reviews
    validates :username, uniqueness: true

    def self.from_omniauth(auth)
        find_or_create_by(username: auth[:info][:email]) do |user|
            user.password = SecureRandom.hex(15)                # only for passing validations since 
        end                                                        # we are using has_secure_password 
    end
end
