class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      session[:appointment_id] = @appointment.id
      redirect_to user_appointment_path(@appointment)
    else
      @errors = @appointment.errors.full_messages
      render 'new'
    end
  end

  private
  def appointment_params
    params.require(:appointment).permit(:start_time, :length, :notes, :phase, :status)
  end
end