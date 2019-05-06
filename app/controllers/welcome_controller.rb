class WelcomeController < ApplicationController

  def home
  end

  def route
    route = HTTParty.get("https://www.mountainproject.com/data/get-routes?
      routeIds=105717718&key=#{Rails.application.credentials.mountain_project_secret}")
    @name = route.parsed_response["routes"][0]["name"]
    @rating = route.parsed_response["routes"][0]["rating"]
  end

end
