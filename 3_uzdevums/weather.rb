require 'nokogiri'
require 'open-uri'

class Weather

attr_accessor :file, :doc, :temperature, :humidity, :temperature

  def initialize(file_url)
    @file = open(file_url) 
    	@doc = Nokogiri::XML(@file)
	@file.close 
	@temperature= doc.at_xpath("//temp_c").attributes["data"].value
	@humidity = doc.at_xpath("//humidity").attributes["data"].value

	@humidity = @humidity.gsub("Humidity: ", "")
  end 

end