class AlaUneController < ApplicationController
  def show 
    @AlaUne = Annonce.AlaUne
  end
end
