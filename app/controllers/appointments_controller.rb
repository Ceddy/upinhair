class AppointmentsController < ApplicationController
  layout 'dashboard'
  # GET /appointments
  # GET /appointments.json
  def index
    if current_user.user_type == "Customer"
      @customer = Customer.find_by_user_id(current_user.id)
      @appointments = Appointment.where("customer_id = ?", @customer.id)
    else
      @stylist = Stylist.find_by_user_id(current_user.id)
      @appointments = Appointment.where("stylist_id = ?", @stylist.id)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appointments }
    end
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appointment }
    end
  end

  # GET /appointments/new
  # GET /appointments/new.json
  def new
    @appointment = Appointment.new
    @stylist = Stylist.find(params[:stylist])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appointment }
    end
  end

  # GET /appointments/1/edit
  def edit
    @appointment = Appointment.find(params[:id])
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new

    somedate = DateTime.new(params[:appointment]["date(1i)"].to_i, 
                        params[:appointment]["date(2i)"].to_i,
                        params[:appointment]["date(3i)"].to_i,
                        params[:appointment]["date(4i)"].to_i,
                        params[:appointment]["date(5i)"].to_i)
    @appointment.date = somedate
    stylist = params[:appointment][:stylist]
    @appointment.stylist_id = stylist
    @appointment.customer_id = Customer.find_by_user_id(current_user.id).id

    @appointment.status = "Pending"

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointments_path, notice: 'Appointment was successfully created.' }
        format.json { render json: @appointment, status: :created, location: @appointment }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appointments/1
  # PUT /appointments/1.json
  def update
    @appointment = Appointment.find(params[:id])

    respond_to do |format|
      if @appointment.update_attributes(params[:appointment])
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_url }
      format.json { head :no_content }
    end
  end

  def accept_appointment
    @appointment = Appointment.find(params[:id])
    @appointment.status = "Confirmed"
    @appointment.save

    respond_to do |format|
      format.html { redirect_to appointments_url }
    end
  end

end
