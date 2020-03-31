module Covid19 
   class CLI
      
      def start 
         covid_menu 
      end 

      def covid_menu 
         puts "Select a number from this list of options:"
         puts "(Type 'exit' to stop at anytime)"
         puts "1. Stats by Country"
         puts "2. Stats by State" 
         puts "3. Stats by City"
         user_input = gets.strip.downcase 

         while user_input != 'exit' 
            case user_input
            when '1'
               country_stats 
            when '2' 
               state_stats 
            when '3' 
               city_stats 
            when 'exit'
               break 
            else  
               covid_menu
            end 
         end 
      end 

   end 
end 