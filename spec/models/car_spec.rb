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
    it 'should validate the presence of fee' do
      car = build(:car, fee: nil)
      expect(car).not_to be_valid
      expect(car.errors.messages[:fee]).to include("can't be blank")
    end
    it 'should validate the presence of payable' do
      car = build(:car, payable: nil)
      expect(car).not_to be_valid
      expect(car.errors.messages[:payable]).to include("can't be blank")
    end
    it 'should validate the presence of duration' do
      car = build(:car, duration: nil)
      expect(car).not_to be_valid
      expect(car.errors.messages[:duration]).to include("can't be blank")
    end
    it 'should validate the presence of representative' do
      car = build(:car, representative: '')
      expect(car).not_to be_valid
      expect(car.errors.messages[:representative]).to include("can't be blank")
    end
    it 'should validate the presence of description' do
      car = build(:car, description: '')
      expect(car).not_to be_valid
      expect(car.errors.messages[:description]).to include("can't be blank")
    end
  end
end
