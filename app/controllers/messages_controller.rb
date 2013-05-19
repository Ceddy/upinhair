class MessagesController < ApplicationController
  layout 'dashboard'
  # GET /messages
  # GET /messages.json
  def index
    @appointment = Appointment.find(params[:appointment_id])
    @messages = Message.where("appointment_id = ?", @appointment.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new
    @message = Message.new
    @appointment = Appointment.find(params[:appointment_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
  end

  # POST /messages
  # POST /messages.json
  def create
    @appointment = Appointment.find(params[:appointment_id])
    @message = @appointment.messages.new
    @message.content = params[:message][:content]
    @message.sender_id = params[:message][:sender]

    respond_to do |format|
      if @message.save
        format.html { redirect_to appointment_messages_path(@appointment.id), notice: 'Message was successfully created.' }
        format.json { render json: appointment_messages_path(@appointment.id), status: :created, location: appointment_messages_path(@appointment.id) }
      else
        format.html { render action: "new" }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messages/1
  # PUT /messages/1.json
  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end
end
