class PlacesController < ApplicationController

  def create
    p = Place.new
    p.name = params["name"]
    p.desc = params["desc"]
    p.image_url = params["image_url"]
    p.save
    redirect_to "/"
  end

  def update
    p = Place.find_by(id:params["id"])
    p.name = params["name"]
    p.desc = params["desc"]
    p.image_url = params["image_url"]
    p.save
    redirect_to "/places/"+params["id"]
  end

  def delete
    p = Place.find_by(id:params["id"])
    p.delete
    redirect_to "/"
  end
end