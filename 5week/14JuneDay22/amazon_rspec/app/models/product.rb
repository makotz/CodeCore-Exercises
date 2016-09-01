class Product < ActiveRecord::Base
  after_initialize :default_values
  validates :title, presence: true, uniqueness: true
  validates :price, presence: true
  validates :sale_price, presence: true, numericality: {less_than_or_equal_to: :price}

  def on_sale?
    :sale_price < :price
  end

  def default_values
    self.sale_price ||= price
  end

end
