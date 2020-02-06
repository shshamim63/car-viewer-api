# frozen_string_literal: true

class Appointment < ApplicationRecord
  validates_presence_of :date
  validates_presence_of :time

  belongs_to :user
  belongs_to :car
end
