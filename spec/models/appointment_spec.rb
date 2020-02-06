require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe '#validations' do
    it 'should test for a valid factory' do
      expect(build(:appointment)).to be_valid
    end
    it 'should validate the presence of date' do
      appointment = build(:appointment, date: '')
      expect(appointment).not_to be_valid
      expect(appointment.errors.messages[:date]).to include("can't be blank")
    end
    it 'should validate the presence of time' do
      appointment = build(:appointment, time: '')
      expect(appointment).not_to be_valid
      expect(appointment.errors.messages[:time]).to include("can't be blank")
    end
    it 'should validate the presence of car' do
      appointment = build(:appointment, car: nil)
      expect(appointment).not_to be_valid
      expect(appointment.errors.messages[:car]).to include('must exist')
    end

    it 'should validate the presence of user' do
      appointment = build(:appointment, user: nil)
      expect(appointment).not_to be_valid
      expect(appointment.errors.messages[:user]).to include('must exist')
    end
  end
end
