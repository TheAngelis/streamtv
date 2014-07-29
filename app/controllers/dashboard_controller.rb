class DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
     @video = Video.find(1)
  end

  def audio
     @video = Video.find(2)
  end

end
