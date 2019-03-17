require 'pry'

def prying_into_the_method
	inside_the_method = "We're inside the method"
	puts inside_the_method
	puts "We're about to stop because of pry!"

	this_variable_hasnt_been_interpreted_yet = "The program froze before it could read me!" 
	puts this_variable_hasnt_been_interpreted_yet
end

def self.scrape_hike_one
   doc = Nokogiri::HTML (open("https://dayhikesneardenver.com/bear-canyon-loop-hike-ncar/"))
   name = doc.search("h1.post entry-title").text 
   location = doc.css("td.snapshotdetail").text 
   distance = doc.css("td.snapshotdetail").text 
    binding.pry 
  end 

prying_into_the_method
