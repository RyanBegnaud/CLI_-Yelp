
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
             
            # list_hash = {
            #     Name: business["name"],
            #     Address: business["location"]["display_address"],
            #     Phone_Number: business["display_phone"],
            #     Rating: business["rating"],
            #     FoodType: business["categories"],
            #     Price: business["price"],
            #     Website: business["url"]
            # }
            @@all << business["name"]
         end
        end
    end
    
    def self.sort 
        i = 0
        o = 1
        @@all.each_with_index.map do |business, i|
            @@all[i].rating <=> @@all[o].rating
            if o < @@all.length - 1
                 o += 1
            end
        end
    end

    def self.all 
        @@all  
    end
end
