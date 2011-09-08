require 'search_command'

class SearchController < ApplicationController
  def index
  end

  def search
    @term = "pharmacists"
    @location = "southbank, melbourne, vic"
    @results = perform_search(@term, @location)
    #puts "results is nil? #{@results.nil?}"


    @results = {"results" => []} if @results.blank?
  end
end
