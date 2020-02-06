class Car < ApplicationRecord

  validates :modelname, presence: true
  validates :fee, presence: true
  validates :payable, presence: true
  validates :duration, presence: true
  validates :representative, presence: true
  validates :description, presence: true

  has_many :appointments
  has_many :users, through: :appointments
end
