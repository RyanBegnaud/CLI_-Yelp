require_relative "../lib/business.rb"

class Sort
    @@all = []
    
    def self.businesses(businesses)
        businesses.each do |business|
            if business["is_closed"] == false 
                business["name"] = Business.new(business["name"])
                business["name"].address = business["location"]["display_address"]
                business["name"].phone_number = business["display_phone"]
                business["name"].rating = business["rating"]
                business["name"].food_type = business["categories"]
                business["name"].price = business["price"]
                business["name"].website = business["url"]
                business["name"].review_count = business["review_count"]
             
                @@all << business["name"]
            end
        end
        self.sort
    end
    
    def self.sort 
       @@all = @@all.sort_by(&:rating).reverse 
    end

    def self.all 
        @@all  
    end
end
