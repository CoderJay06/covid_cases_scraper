Source: https://www.worldometers.info/coronavirus/

User Experience:

$ covid19

> Choose an option you are interested in for Covid19 Stats
> Global Stats
> Stats by Country 
> Stats by States 
> Stats by City
> Stats by County

> Total Cases

lib Classes: 

CLI - #=> Controller
#start 
- Runs app

#covid_menu
- Displays menu of options for user to choose from when application is run
- gets user input 

#global_cases 
- All covid cases globally 


Covid -  #=> Model
#initialize 
- Creates objects from scraped covid data


Covid Scraper -
.scrape_stats
- Does the scraping of covid statistics 
- Parsing data

*Scraping data: <div class="maincounter-number"> -> Gloal case # 
<div class="number-table-main"> -> Active cases # 
<div class="number-table-main"> -> Closed cases #

 By Country tag:
 main_table_countries tr
