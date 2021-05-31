class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, uniqueness: true
    validates :phoneno, length: {maximum: 10}, numericality: true
end
