class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :start_count, numericality: {greater_than: 0, less_than: 6}, presence: true

  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  def liked?(user)
    likes.exists?(user: user)
  end

  def like_for(user)
    likes.find_by_user_id user
  end

end
