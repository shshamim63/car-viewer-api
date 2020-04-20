class AppointmentsController < ApplicationController
  include CurrentUserConcern
  def index
    if @current_user
      print "the current user is #{@current_user}"
      appointments = @current_user.appointments.recent.joins(:car)
      if appointments
        render json: appointments
      else
        render json: {
          status: 404
        }
      end
    else
      render json: { logged_in: false }
    end
  end

  def create
    if @current_user
      appointment = @current_user.appointments.build(appointment_params)
      if appointment.save
        appointments = @current_user.appointments.recent.joins(:car)
        render json: {
          status: :created,
          appointment: appointments
        }
      else
        render json: { status: 200 }
      end
    else
      render json: { logged_in: false }
    end
  end

  private

  def appointment_params
    params.require(:data).require(:attributes)
      .permit(:date, :time, :city, :car_id) ||
      ActionController::Parameters.new
  end
end
