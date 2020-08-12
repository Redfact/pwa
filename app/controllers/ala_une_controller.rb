class AlaUneController < ApplicationController
  def offline
    render 'offline', layout: true
  end

  def show 
    @AlaUne = Annonce.AlaUne
  end
end
