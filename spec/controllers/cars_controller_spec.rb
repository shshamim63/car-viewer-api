require 'rails_helper'

RSpec.describe CarsController, type: :controller do
  describe '#index' do
    subject { get :index }
    it 'should return success response' do
      subject
      expect(response).to have_http_status(:ok)
    end
    it 'should return proper json' do
      cars = create_list :car, 2
      subject
      cars.each_with_index do |car, index|
        expect(json_data[index]['attributes']).to eq(
          {
            'modelname' => car.modelname,
            'fee' => car.fee,
            'payable' => car.payable,
            'duration' => car.duration,
            'representative' => car.representative,
            'description' => car.description
          }
        )
      end
    end
  end

  describe '#show' do
    let(:car) { create :car }
    subject { get :show, params: { id: car.id } }

    it 'should return a success response' do
      subject
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      subject
      expect(json_data['attributes']).to eq(
        "modelname" => car.modelname,
        "fee"=> car.fee,
        "payable"=> car.payable,
        "duration"=> car.duration,
        "representative"=> car.representative,
        "description"=> car.description
      )
    end
  end
end
