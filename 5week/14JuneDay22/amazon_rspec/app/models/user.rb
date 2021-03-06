class User < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

end
