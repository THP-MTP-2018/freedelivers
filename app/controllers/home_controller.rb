class HomeController < ApplicationController
  def index
  end

  def about
  end

  def profil
    @services = Service.all
  end
end
