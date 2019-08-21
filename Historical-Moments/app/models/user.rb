class User < ApplicationRecord

    validates :username, { presence: true }
    validates :username, { uniqueness: true }
    validates :password, length: { minimum: 6 }
    validates :password, length: { maximum: 20 }

    has_secure_password
end
