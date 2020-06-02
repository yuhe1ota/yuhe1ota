class User < ApplicationRecord
    has_secure_password
    attr_accessor :password, :password_confirm
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
    validates :password, length: {minimum: 8},confirmation: true
    
    def password=(val)
        if val.present?
            self.password_digest = BCrypt::Password.create(val)
        end
        @password=val
    end
end
