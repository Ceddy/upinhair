class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def dashboard
    respond_to do |format|
      format.html # index.html.erb
    end    
  end
end
