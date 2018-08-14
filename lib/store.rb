class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validate :mens_or_womens_must_be_true

    def mens_or_womens_must_be_true
       unless mens_apparel || womens_apparel
        errors.add(:apparel, "mens_apparel and/or womens_apparel must be true")
       end
    end
end