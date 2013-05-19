class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    # Redirect logic here!
    puts current_user

    case current_user.user_type
    when 'Stylist'
      # After signing in, redirect regular users to the regular dashboard
      path = stylists_path
    when 'Customer'
      # After signing in, redirect administrator users to the admin dashboard
      path = customers_path
    end

    redirect_to path
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
