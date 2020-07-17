require "covid19/version"
require "./lib/covid19/cli"
require "nokogiri"
require "open-uri"
require 'pry'
require 'colorize'
require 'colorized_string'

require_relative "covid19/version"
require_relative "covid19/cli"
require_relative "covid19/covid"
require_relative "covid19/covid_scraper"

module Covid19
  class Error < StandardError; end
  
end
