class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    # Redirect logic here!
    current_user

    case current_user.user_type
    when 'Stylist'
      # After signing in, redirect regular users to the regular dashboard
      @stylist = Stylist.where('user_id = ?', current_user.id).first
      path = stylist_path(@stylist.id)
    when 'Customer'
      # After signing in, redirect administrator users to the admin dashboard
      @customer = Customer.where('user_id = ?', current_user.id).first
      path = customer_path(@customer.id)
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
