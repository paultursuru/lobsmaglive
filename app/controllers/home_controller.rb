class HomeController < ApplicationController
  def index
    require 'json'
    require 'open-uri'

    cloudcasts = "https://api.mixcloud.com/LobservatoireLive/cloudcasts/?limit=100"
    cloudcasts_serialized = open(cloudcasts).read
    @tracks = JSON.parse(cloudcasts_serialized)
  end
end
