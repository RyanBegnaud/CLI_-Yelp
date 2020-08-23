require_relative "../lib/user.rb"
require_relative "../lib/yelp_api.rb"
require_relative "../lib/sort.rb"
require_relative "../lib/display.rb"

class Program 
    def self.run 
        User.get_input 
        a = YelpApi.search(User.food, User.zip)
        Sort.businesses(a)
        Sort.sort
        Display.display
        
       
        puts "\nWould you like to search again?(Type 'yes' for yes) and (hit 'enter' for no)"
        user_input = gets.strip  
    
        if user_input == "yes" || user_input == "Yes"
            Sort.all.clear
            Program.run
        end
     end
end

Program.run
