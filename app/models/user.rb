class User < ApplicationRecord
    has_secure_password
    has_many :watchables
    has_many :categories, through: :watchables
    has_many :services, through: :watchables

    validates :username, presence: true, uniqueness: true, length: { in: 4..20 }
    validates :email, presence: true, uniqueness: true, length: { in: 4..25 }
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
