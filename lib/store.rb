class Store < ActiveRecord::Base

  has_many :employees

  validates_length_of :name, minimum: 3, message: "name must be at least 3 characters"
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0, message: "Annual revenue must be greater than 0" }

  validate :must_sell_womens_or_mens_apparel



  private



    def must_sell_womens_or_mens_apparel
      if mens_apparel == nil && womens_apparel == nil
        errors.add(:mens_apparel, "Need to sell women's apparel, men's apparel, or both")
      end
      if mens_apparel == false && womens_apparel == false
        errors.add(:mens_apparel, "Need to sell women's apparel, men's apparel, or both")
      end
    end

end
