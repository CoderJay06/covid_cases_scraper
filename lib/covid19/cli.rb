module Covid19 
   class CLI
      
      def start 
         covid_menu 
      end 

      def covid_menu
         Covid19::CovidScraper.scrape_covid_stats 
         covid_stats_selection
         user_input = gets.strip.downcase
         case user_input
         when '1'
            select_covid_option('global_stats')
            covid_menu
         when '2' 
            select_covid_option('total_deaths') 
            covid_menu
         when '3' 
            select_covid_option('active_cases')
            covid_menu
         when '4'
            select_covid_option('recovered_cases')
            covid_menu
         when '5' 
            select_covid_option('closed_cases')
            covid_menu
         when '6'
            all_covid_content
            covid_menu
         when '7'
            country_stats
            covid_menu
         when 'exit'
            puts "Goodbye"
         else  
            puts "Invalid input"
            covid_menu
         end 
      end 

      def covid_stats_selection 
         puts "Select a number from this list of options:"
         puts "(Type 'exit' to stop at anytime)"
         puts "1. Global Stats"
         puts "2. Total Deaths" 
         puts "3. Active Cases"
         puts "4. Recovered Cases"
         puts "5. Closed Cases"
         puts "6. All Covid19 Cases"
      end 

      def all_covid_content 
         Covid19::Covid.all.each do |stat|
            puts "------------------------------------"
            puts "Global Cases #:" + " #{stat.global_stats}".yellow
            puts "Total Deaths #:" + " #{stat.total_deaths}".yellow
            puts "Active Cases #:" + " #{stat.active_cases}".yellow
            puts "Recovered Cases #:" + " #{stat.recovered_cases}".yellow
            puts "Closed Cases #:" + " #{stat.closed_cases}".yellow
            puts "------------------------------------"
         end 
      end 

      def select_covid_option(input)
         covid_selection = nil
         Covid19::Covid.all.select do |stat|
             covid_selection = "\n#{stat.send(input)} Cases"
         end 
         puts covid_selection.yellow
         puts ""
      end 

      def country_stats
         Covid19::CovidScraper.country_scraper
         puts "Enter a Country to view there Covid19 Statistics:"
         country_input = gets.strip
         country_stat = Covid19::Covid.find(country_input) 
         puts "You selected #{country_stat.country_name} ##{country_stat.country_cases}"
      end
   end 
end 
