require 'rails_helper'

describe 'appointments routes' do
  it 'should route to to appointments index' do
    expect(get('/appointments')).to route_to('appointments#index')
  end
  it 'should route to to appointments create' do
    expect(post('/appointments')).to route_to('appointments#create')
  end
end
