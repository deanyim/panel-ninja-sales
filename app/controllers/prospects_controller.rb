class ProspectsController < ApplicationController
  def meow
    @prospect = Prospect.find(params[:id])
    @prospect.notes += "\nmeow"
    @prospect.save
  end
end
