class ProspectsController < ApplicationController
  def meow
    @prospect = Prospect.find(params[:id])
    if @prospect.notes.nil?
      @prospect.notes = ""
    end
    @prospect.notes += "\nmeow"
    @prospect.save
  end
end
