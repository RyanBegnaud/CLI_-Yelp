class Display
    def self.display 
        Sort.all.each.with_index(1) do |business, index|
            puts "\n#{index}. Name: #{business.name} \n   Category: #{business.food_type[0]["title"]} \n   Rating: *#{business.rating} \n   Review Count: ##{business.review_count} \n   Phone Number:#{business.phone_number} 
   Price: #{business.price} \n   Address: #{business.address.join(" ")} \n   Website: #{business.website}" 
        end
    end
end
