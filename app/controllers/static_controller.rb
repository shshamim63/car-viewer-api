# frozen_string_literal: true

class StaticController < ApplicationController
  def home
    render json: { status: 'It is working' }
  end
end
