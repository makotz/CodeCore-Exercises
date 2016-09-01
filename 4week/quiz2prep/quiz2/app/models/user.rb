class User < ActiveRecord::Base
  scope :created_after, lambda { |x| where("created_at > ?", x )}
end
