class AppointmentsController < ApplicationController
  def index
    if @current_user
      appointments = @current_user.appointments.order("created_at DESC").joins(:cars)
      if appointments
        render json: {
          status: :created,
          appointments: appointments
        }
      else
        render json: {
          status: 404
        }
      end
    end
  end

  def create
    
  end
end