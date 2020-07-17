module Covid19   
   class Covid 
      attr_accessor :country_name, :country_cases, :global_stats, :recovered_cases, :active_cases, :closed_cases, :total_deaths

      @@all = []

      def save 
         @@all << self 
      end 

      def self.all 
         @@all 
      end 

      def self.find(name)
         @@all.detect{|data| data.country_cases == name}
      end 

   end 
end 