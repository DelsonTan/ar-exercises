class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, :last_name, :store, presence: true
    validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
    
    before_save :set_random_password

    private
    def set_random_password
        self.password = (0...7).map { ('a'..'z').to_a[rand(26)] }.join
    end
end
