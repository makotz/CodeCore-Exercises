class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :category
  belongs_to :user

  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  def favorited?(user)
    favorites.exists?(user: user)
  end

  def favorite_for(user)
    favorites.find_by_user_id user
  end


end
