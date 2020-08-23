class Business
    attr_accessor :name, :address, :price, :website, :food_type, :phone_number, :rating, :review_count
    
    def initialize(name)
        @name = name 
    end
end