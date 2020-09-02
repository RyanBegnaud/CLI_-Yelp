class User
    
    @@food = "food"
    @@zip = ""
    
    def self.get_input
        puts "Please enter the 5 digit area code where you would like to look for food!"
        @@zip = gets.strip 
        test = self.valid
        
        while test != true 
            puts "Invalid entry, Please enter the 5 digit area code where you would like to look for food!"
            @@zip = gets.strip  
            test = self.valid
        end

        if test == true 
            puts "Is there a type of Food or a specific Restaurant you're looking for?(type yes) If not hit enter."
            @food_yes_no = gets.strip 
            self.food_search 
        end
    end

    def self.valid
        if @@zip.length == 5
            true 
        else 
            false 
        end
    end

    def self.food_search 
        if @food_yes_no == "yes" || @food_yes_no == "Yes"
            puts "What Food or Restaurant are you looking for today?"
            @food_input = gets.strip
            @@food = @food_input
        else 
            self.food
        end
    end
    
    def self.food 
        @@food
    end
    
    def self.zip 
        @@zip 
    end 
end
