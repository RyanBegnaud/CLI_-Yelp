
class Display
    def self.display 
        i = 1
        
        Sort.all.each do |business|
            puts "\n#{i}. Name: #{business.name} \n   Category: #{business.food_type[0]["title"]} \n   Rating: *#{business.rating} \n   Review Count: ##{business.review_count} \n   Phone Number:#{business.phone_number} 
   Price: #{business.price} \n   Address: #{business.address.join(" ")} \n   Website: #{business.website}" 
            
            i+=1
         end
     end
end
