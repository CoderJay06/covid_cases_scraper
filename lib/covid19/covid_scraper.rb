module Covid19

   class CovidScraper

      def self.open_covid_stats 
         #binding.pry
         stats_url = "https://www.worldometers.info/coronavirus/"
         Nokogiri::HTML(open(stats_url))
      end 

      def self.scrape_covid_stats 
         stats_url = "https://www.worldometers.info/coronavirus/"
         content = Nokogiri::HTML(open(stats_url))
         covid = Covid19::Covid.new
         covid.global_stats = content.css(".maincounter-number span").first.text 
         covid.total_deaths = content.css(".maincounter-number span")[1].text
         covid.recovered_cases = content.css(".maincounter-number span")[2].text
         covid.active_cases = content.css(".number-table-main").first.text
         covid.closed_cases = content.css(".number-table-main").last.text
         covid.save 
        # binding.pry 
         # Global selector: content.css(".maincounter-number span").first.text 
         # Total deaths selector: content.css(".maincounter-number span")[1].text
         # Recovered caes selector: content.css(".maincounter-number span")[2].text
         # Active cases selector: content.css("div.number-table-main").first.text
         # Closed cases selector: content.css("div.number-table-main").last.text
      end 

      # def self.global_case_scraper 
      #    content = self.open_covid_stats.css(".maincounter-number")
      #    covid = Covid19::Covid.new
      #    covid.global_stats = content.css(".maincounter-number span").first.text 
      #    covid.global_stats
      # end 


   end 
end 