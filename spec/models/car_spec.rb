require 'rails_helper'

RSpec.describe Car, type: :model do
  describe '#validations' do
    it 'should test for a valid factory' do
      expect(build(:car)).to be_valid
    end
    it 'should validate the presence of modelname' do
      car = build(:car, modelname: '')
      expect(car).not_to be_valid
      expect(car.errors.messages[:modelname]).to include("can't be blank")
    end
  end
end
