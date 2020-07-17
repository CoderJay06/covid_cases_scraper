module Covid19   
   class Covid 
      attr_accessor :country_name, :global_stats, :recovered_cases, :active_cases, :closed_cases, :total_deaths

      @@all = []

      def save 
         @@all << self 
      end 

      def self.all 
         @@all 
      end 

      def self.find(country_name)
         puts "You selected #{country_name}"
      end 

   end 
end 