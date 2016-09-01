class User < ActiveRecord::Base
  has_secure_password

  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :nullify

  has_many :favorites, dependent: :destroy
  has_many :favorited_products, through: :favorites, source: :product

  has_many :likes, dependent: :destroy
  has_many :liked_reviews, through: :likes, source: :review

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
