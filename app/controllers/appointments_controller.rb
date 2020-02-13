class AppointmentsController < ApplicationController
  include CurrentUserConcern
  def index
    if @current_user
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
      appointment = @current_user.appointments
        .build(car_id: params[:car_id],
               date: params[:date],
               time: params[:time],
               city: params[:city])
      if appointment.save
        render json: {
          status: :created,
          appointment: appointment
        }
      else
        render json: { status: 200 }
      end
    else
      render json: { logged_in: false }
    end
  end
end
