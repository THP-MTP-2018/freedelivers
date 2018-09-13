class HomeController < ApplicationController
  def index
    @services = Service.all.paginate(page: params[:page], per_page: 2)
  end

  def about
  end

  def profil
    @services = Service.all
  end
end
