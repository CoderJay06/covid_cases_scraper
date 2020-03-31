class Covid 
   attr_accessor :country_name, :cases, :deaths

   @@all = []

   def initialize 
   end 

   def self.all 
      self.class.all 
   end 

   def save 
      @@all << self 
   end 

end 
