# frozen_string_literal: true

require 'rails_helper'

describe 'cars routes' do
  it 'should route to to cars index' do
    expect(get '/cars').to route_to('cars#index')
  end
  it 'should route to to cars create' do
    expect(post '/cars').to route_to('cars#create')
  end
  it 'should route to to cars show' do
    expect(get '/cars/1').to route_to('cars#show', id: '1')
  end
end