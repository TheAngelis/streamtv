class AdminController < ApplicationController

  before_filter :authenticate_user!
before_filter :is_admin?

def is_admin?
  if current_user.admin?
    true
  else
    redirect_to :controller=>'dashboard', :action => 'index'
  end
end


  def index

  end

  def videos

  end
#  def show

#  if current_user.admin?
   #     redirect_to :controller=>'users', :action => 'show'
   # end
  #end


end
