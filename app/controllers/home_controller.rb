class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@users = User.all

    # Redirect logic here!
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def search
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
